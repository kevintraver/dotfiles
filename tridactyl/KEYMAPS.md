# Tridactyl Default Keymaps Cheatsheet

Reference for default Tridactyl keybindings. Source: [config.ts](https://github.com/tridactyl/tridactyl/blob/master/src/lib/config.ts#L225)

## Navigation & Opening URLs

| Key     | Command               | Description                    |
| ------- | --------------------- | ------------------------------ |
| `o`     | `fillcmdline open`    | Open URL in current tab        |
| `O`     | `current_url open`    | Open current URL in new tab    |
| `w`     | `fillcmdline winopen` | Open URL in new window         |
| `W`     | `current_url winopen` | Open current URL in new window |
| `t`     | `fillcmdline tabopen` | Open URL in new tab            |
| `T`     | `current_url tabopen` | Open current URL in new tab    |
| `]]`    | `followpage next`     | Follow next page link          |
| `[[`    | `followpage prev`     | Follow previous page link      |
| `[c`    | `urlincrement -1`     | Decrement URL number           |
| `]c`    | `urlincrement 1`      | Increment URL number           |
| `<C-x>` | `urlincrement -1`     | Decrement URL number           |
| `<C-a>` | `urlincrement 1`      | Increment URL number           |

## Clipboard & Yanking

| Key  | Command               | Description                   |
| ---- | --------------------- | ----------------------------- |
| `yy` | `clipboard yank`      | Yank URL to clipboard         |
| `ys` | `clipboard yankshort` | Yank short URL                |
| `yq` | `text2qr --timeout 5` | Generate QR code              |
| `yc` | `clipboard yankcanon` | Yank canonical URL            |
| `ym` | `clipboard yankmd`    | Yank as markdown              |
| `yo` | `clipboard yankorg`   | Yank as org-mode              |
| `yt` | `clipboard yanktitle` | Yank page title               |
| `p`  | `clipboard open`      | Open clipboard URL            |
| `P`  | `clipboard tabopen`   | Open clipboard URL in new tab |

## Scrolling

| Key     | Command                      | Description           |
| ------- | ---------------------------- | --------------------- |
| `j`     | `scrollline 10`              | Scroll down 10 lines  |
| `<C-e>` | `scrollline 10`              | Scroll down 10 lines  |
| `k`     | `scrollline -10`             | Scroll up 10 lines    |
| `<C-y>` | `scrollline -10`             | Scroll up 10 lines    |
| `h`     | `scrollpx -50`               | Scroll left 50px      |
| `l`     | `scrollpx 50`                | Scroll right 50px     |
| `G`     | `scrollto 100`               | Scroll to bottom      |
| `gg`    | `scrollto 0`                 | Scroll to top         |
| `<C-u>` | `scrollpage -0.5`            | Scroll up half page   |
| `<C-d>` | `scrollpage 0.5`             | Scroll down half page |
| `<C-f>` | `scrollpage 1`               | Scroll down full page |
| `<C-b>` | `scrollpage -1`              | Scroll up full page   |
| `<C-v>` | `nmode ignore 1 mode normal` | Enter visual mode     |
| `$`     | `scrollto 100 x`             | Scroll to right edge  |
| `^`     | `scrollto 0 x`               | Scroll to left edge   |

## History & Navigation

| Key     | Command       | Description               |
| ------- | ------------- | ------------------------- |
| `H`     | `back`        | Go back                   |
| `L`     | `forward`     | Go forward                |
| `<C-o>` | `jumpprev`    | Jump to previous location |
| `<C-i>` | `jumpnext`    | Jump to next location     |
| `u`     | `undo`        | Undo closed tab           |
| `U`     | `undo window` | Undo closed window        |
| `r`     | `reload`      | Reload page               |
| `R`     | `reloadhard`  | Hard reload               |
| `x`     | `stop`        | Stop loading              |

## Tabs

| Key   | Command                                             | Description                       |
| ----- | --------------------------------------------------- | --------------------------------- |
| `d`   | `tabclose`                                          | Close current tab                 |
| `D`   | `js tri.excmds.composite('tabprev;', 'tabclose #')` | Close current tab, go to previous |
| `gx0` | `tabclosealltoleft`                                 | Close all tabs to the left        |
| `gx$` | `tabclosealltoright`                                | Close all tabs to the right       |
| `<<`  | `tabmove -1`                                        | Move tab left                     |
| `>>`  | `tabmove +1`                                        | Move tab right                    |
| `J`   | `tabprev`                                           | Previous tab                      |
| `K`   | `tabnext`                                           | Next tab                          |
| `gt`  | `tabnext_gt`                                        | Next tab (gt style)               |
| `gT`  | `tabprev`                                           | Previous tab                      |
| `g^`  | `tabfirst`                                          | First tab                         |
| `g0`  | `tabfirst`                                          | First tab                         |
| `g$`  | `tablast`                                           | Last tab                          |
| `ga`  | `tabaudio`                                          | Toggle tab audio                  |
| `X`   | `tabonly`                                           | Close all other tabs              |

## URL & Page Operations

| Key  | Command        | Description               |
| ---- | -------------- | ------------------------- |
| `gh` | `home`         | Go to home page           |
| `gH` | `home true`    | Go to home page (new tab) |
| `gu` | `urlparent`    | Go to parent URL          |
| `gU` | `urlroot`      | Go to root URL            |
| `gf` | `viewsource`   | View page source          |
| `gr` | `reader --old` | Reader mode               |

## Search & Commands

| Key  | Command                      | Description                 |
| ---- | ---------------------------- | --------------------------- |
| `:`  | `fillcmdline_notrail`        | Open command line           |
| `s`  | `fillcmdline open search`    | Search with default engine  |
| `S`  | `fillcmdline tabopen search` | Search in new tab           |
| `b`  | `fillcmdline tab`            | Switch to tab               |
| `B`  | `fillcmdline taball`         | Switch to tab (all windows) |
| `ZZ` | `qall`                       | Close all tabs and exit     |

## Hints

| Key   | Command                                                                                   | Description                    |
| ----- | ----------------------------------------------------------------------------------------- | ------------------------------ |
| `f`   | `hint`                                                                                    | Hint links                     |
| `F`   | `hint -b`                                                                                 | Hint links (background)        |
| `gF`  | `hint -qb`                                                                                | Hint links (quick, background) |
| `v`   | `hint -h`                                                                                 | Visual mode (hint)             |
| `;i`  | `hint -i`                                                                                 | Hint inputs                    |
| `;b`  | `hint -b`                                                                                 | Hint links (background)        |
| `;o`  | `hint`                                                                                    | Hint links                     |
| `;I`  | `hint -I`                                                                                 | Hint inputs (all)              |
| `;k`  | `hint -k`                                                                                 | Hint keys                      |
| `;K`  | `hint -K`                                                                                 | Hint keys (all)                |
| `;y`  | `hint -y`                                                                                 | Hint yank                      |
| `;Y`  | `hint -cF img i => tri.excmds.yankimage(...)`                                             | Yank image URL                 |
| `;p`  | `hint -p`                                                                                 | Hint password                  |
| `;h`  | `hint -h`                                                                                 | Hint headings                  |
| `;P`  | `hint -P`                                                                                 | Hint password (all)            |
| `;r`  | `hint -r`                                                                                 | Hint radio                     |
| `;s`  | `hint -s`                                                                                 | Hint select                    |
| `;S`  | `hint -S`                                                                                 | Hint select (all)              |
| `;a`  | `hint -a`                                                                                 | Hint anchors                   |
| `;A`  | `hint -A`                                                                                 | Hint anchors (all)             |
| `;;`  | `hint -; *`                                                                               | Hint all                       |
| `;#`  | `hint -#`                                                                                 | Hint IDs                       |
| `;v`  | `hint -W mpvsafe`                                                                         | Hint video (mpv)               |
| `;V`  | `hint -V`                                                                                 | Hint video                     |
| `;w`  | `hint -w`                                                                                 | Hint windows                   |
| `;t`  | `hint -W tabopen`                                                                         | Hint tabopen                   |
| `;O`  | `hint -W fillcmdline_notrail open`                                                        | Hint open                      |
| `;W`  | `hint -W fillcmdline_notrail winopen`                                                     | Hint winopen                   |
| `;T`  | `hint -W fillcmdline_notrail tabopen`                                                     | Hint tabopen                   |
| `;d`  | `hint -W tabopen --discard`                                                               | Hint tabopen (discard)         |
| `;gd` | `hint -qW tabopen --discard`                                                              | Hint tabopen (quick, discard)  |
| `;z`  | `hint -z`                                                                                 | Hint focus                     |
| `;m`  | `hint -JFc img i => tri.excmds.open('https://lens.google.com/uploadbyurl?url='+i.src)`    | Google Lens (current tab)      |
| `;M`  | `hint -JFc img i => tri.excmds.tabopen('https://lens.google.com/uploadbyurl?url='+i.src)` | Google Lens (new tab)          |
| `;gi` | `hint -qi`                                                                                | Hint inputs (quick)            |
| `;gI` | `hint -qI`                                                                                | Hint inputs (quick, all)       |
| `;gk` | `hint -qk`                                                                                | Hint keys (quick)              |
| `;gy` | `hint -qy`                                                                                | Hint yank (quick)              |
| `;gp` | `hint -qp`                                                                                | Hint password (quick)          |
| `;gP` | `hint -qP`                                                                                | Hint password (quick, all)     |
| `;gr` | `hint -qr`                                                                                | Hint radio (quick)             |
| `;gs` | `hint -qs`                                                                                | Hint select (quick)            |
| `;gS` | `hint -qS`                                                                                | Hint select (quick, all)       |
| `;ga` | `hint -qa`                                                                                | Hint anchors (quick)           |
| `;gA` | `hint -qA`                                                                                | Hint anchors (quick, all)      |
| `;g;` | `hint -q;`                                                                                | Hint all (quick)               |
| `;g#` | `hint -q#`                                                                                | Hint IDs (quick)               |
| `;gv` | `hint -qW mpvsafe`                                                                        | Hint video (quick, mpv)        |
| `;gw` | `hint -qw`                                                                                | Hint windows (quick)           |
| `;gb` | `hint -qb`                                                                                | Hint links (quick, background) |
| `;gF` | `hint -qb`                                                                                | Hint links (quick, background) |
| `;gf` | `hint -q`                                                                                 | Hint links (quick)             |

## Bookmarks & Quickmarks

| Key     | Command              | Description          |
| ------- | -------------------- | -------------------- |
| `a`     | `current_url bmark`  | Bookmark current URL |
| `A`     | `bmark`              | Bookmark with prompt |
| `M`     | `gobble 1 quickmark` | Add quickmark        |
| `m`     | `gobble 1 markadd`   | Add mark             |
| `` ` `` | `gobble 1 markjump`  | Jump to mark         |

## Focus & Input

| Key  | Command         | Description      |
| ---- | --------------- | ---------------- |
| `gi` | `focusinput -l` | Focus last input |

## Text Transformations

| Key  | Command             | Description             |
| ---- | ------------------- | ----------------------- |
| `g?` | `rot13`             | ROT13 transform         |
| `g!` | `jumble`            | Jumble text             |
| `g;` | `changelistjump -1` | Jump to previous change |

## Zoom

| Key  | Command          | Description      |
| ---- | ---------------- | ---------------- |
| `zi` | `zoom 0.1 true`  | Zoom in          |
| `zo` | `zoom -0.1 true` | Zoom out         |
| `zm` | `zoom 0.5 true`  | Zoom in more     |
| `zr` | `zoom -0.5 true` | Zoom out more    |
| `zM` | `zoom 0.5 true`  | Zoom in more     |
| `zR` | `zoom -0.5 true` | Zoom out more    |
| `zz` | `zoom 1`         | Reset zoom       |
| `zI` | `zoom 3`         | Zoom in maximum  |
| `zO` | `zoom 0.3`       | Zoom out maximum |

## Mode Switching

| Key           | Command                               | Description       |
| ------------- | ------------------------------------- | ----------------- |
| `<S-Insert>`  | `mode ignore`                         | Enter ignore mode |
| `<AC-Escape>` | `mode ignore`                         | Enter ignore mode |
| `<AC-`>`      | `mode ignore`                         | Enter ignore mode |
| `<S-Escape>`  | `mode ignore`                         | Enter ignore mode |
| `<Escape>`    | `composite mode normal ; hidecmdline` | Enter normal mode |
| `<C-[>`       | `composite mode normal ; hidecmdline` | Enter normal mode |

## Miscellaneous

| Key                                                                                                                | Command                                            | Description         |
| ------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------- | ------------------- |
| `<A-p>`                                                                                                            | `pin`                                              | Pin tab             |
| `<A-m>`                                                                                                            | `mute toggle`                                      | Toggle mute         |
| `<F1>`                                                                                                             | `help`                                             | Show help           |
| `.`                                                                                                                | `repeat`                                           | Repeat last command |
| `<AS-ArrowUp><AS-ArrowUp><AS-ArrowDown><AS-ArrowDown><AS-ArrowLeft><AS-ArrowRight><AS-ArrowLeft><AS-ArrowRight>ba` | `open https://www.youtube.com/watch?v=M3iOROuTuMA` | Konami code         |

## Command Mode Completions

| Key     | Command              | Description         |
| ------- | -------------------- | ------------------- |
| `<C-n>` | `ex.next_completion` | Next completion     |
| `<C-p>` | `ex.prev_completion` | Previous completion |
