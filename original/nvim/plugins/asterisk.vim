let g:vim_search_pulse_disable_auto_mappings = 1

nmap * <Plug>(asterisk-*)<Plug>Pulse
nmap # <Plug>(asterisk-#)<Plug>Pulse
nmap n n<Plug>Pulse
nmap N N<Plug>Pulse
" Pulses cursor line on first match
" when doing search with / or ?
cmap <silent> <expr> <enter> search_pulse#PulseFirst()
