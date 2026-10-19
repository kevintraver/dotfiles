# zi with each directory's last visit time. Ctrl-R toggles sorting by most
# recently visited; set ZI_SORT=recent to start that way.
zi() {
  local tmp=$(mktemp -d) result
  local db="${_ZO_DATA_DIR:-$HOME/Library/Application Support/zoxide}/db.zo"

  # zoxide's db.zo (v3) is a u32 version, a u64 count, then per directory a
  # u64 length, the path, an f64 rank and a u64 last-accessed timestamp
  zoxide query --list --score -- "$@" | perl -e '
    my ($tmp, $db) = @ARGV;
    open my $fh, "<:raw", $db or die "zi: cannot read $db\n";
    my $buf = do { local $/; <$fh> };
    my ($version, $count) = unpack "L< Q<", $buf;
    die "zi: unsupported zoxide database version $version\n" unless $version == 3;
    my ($off, %visited) = 12;
    for (1 .. $count) {
      my $len = unpack "Q<", substr($buf, $off, 8);
      my $path = substr($buf, $off + 8, $len);
      $visited{$path} = unpack "Q<", substr($buf, $off + 16 + $len, 8);
      $off += 24 + $len;
    }

    my @units = ([31557600, "year"], [2629800, "month"], [604800, "week"],
                 [86400, "day"], [3600, "hour"], [60, "minute"], [1, "second"]);
    sub ago {
      my $age = time - shift;
      for (@units) {
        my ($secs, $unit) = @$_;
        next if $age < $secs && $secs > 1;
        my $n = int($age / $secs);
        return "$n $unit" . ($n == 1 ? "" : "s");
      }
    }

    my @rows = map { /^\s*(\S+) (.*)$/ ? [$1, $2, $visited{$2}] : () } <STDIN>;
    # align times to the 95th percentile path length, so a few long paths
    # do not push the column to the edge
    my @lengths = sort { $a <=> $b } map { length $_->[1] } @rows;
    my $width = $lengths[int(@lengths * 0.95)];
    my $line = sub {
      my ($score, $path, $time) = @{+shift};
      my $pad = " " x ($width > length $path ? $width - length $path : 0);
      sprintf "%6.1f\t%s\t%s \e[38;2;115;122;162m%s\e[0m\n", $score, $path, $pad, ago($time);
    };
    open my $out, ">", "$tmp/score" or die; print $out map { $line->($_) } @rows;
    open $out, ">", "$tmp/recent" or die;
    print $out map { $line->($_) } sort { $b->[2] <=> $a->[2] } @rows;
  ' $tmp $db || { command rm -rf $tmp; return 1 }

  local start=score prompt='> '
  [[ $ZI_SORT == recent ]] && start=recent prompt='recent> '

  # same fzf flags zoxide uses for zi, minus the preview, plus the sort toggle
  result=$(fzf --exact --no-sort --cycle --keep-right --border=sharp \
    --height=45% --info=inline --layout=reverse --tabstop=1 --exit-0 \
    --bind=ctrl-z:ignore,btab:up,tab:down \
    --bind="ctrl-r:transform:[[ \$FZF_PROMPT == 'recent> ' ]] && echo 'change-prompt(> )+reload(cat $tmp/score)' || echo 'change-prompt(recent> )+reload(cat $tmp/recent)'" \
    --ansi --prompt=$prompt --delimiter='\t' --nth=2 --accept-nth=2 \
    < $tmp/$start)
  command rm -rf $tmp
  [[ -n $result ]] && __zoxide_cd $result
}
