call plug#begin('~/.config/nvim/plugged')

" Plug 'floobits/floobits-neovim'

" colorscheme
Plug 'icymind/NeoSolarized'

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'srstevenson/vim-picker'

" vim settings
Plug 'tpope/vim-sensible'

" icons
Plug 'ryanoasis/vim-devicons'

" airline and friends
Plug 'itchyny/lightline.vim'
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'

" movement utilties
Plug 'justinmk/vim-sneak'
Plug 'landock/vim-expand-region'
Plug 'tpope/vim-unimpaired'
Plug 'matze/vim-move'
Plug 'bkad/CamelCaseMotion'
Plug 'wellle/targets.vim'
Plug 'kevintraver/numbers.vim'

Plug 'kshenoy/vim-signature'
" Plug 'iago-lito/vim-visualMarks'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'takac/vim-hardtime'

" motions
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'reedes/vim-textobj-sentence'
Plug 'saaguero/vim-textobj-pastedtext'
Plug 'glts/vim-textobj-comment'
Plug 'jceb/vim-textobj-uri'

Plug 'nhooyr/neoman.vim'

" html
Plug 'mattn/emmet-vim/'
Plug 'lifepillar/vim-cheat40'

" vim utilities
Plug 'mtth/scratch.vim'

" clipboard
Plug 'svermeulen/vim-easyclip'
Plug 'junegunn/vim-peekaboo'

" undo
Plug 'mbbill/undotree'

" linting
Plug 'w0rp/ale'

" navigation
Plug 'christoomey/vim-tmux-navigator'

" window / buffer managemenet
Plug 'gcmt/taboo.vim'
Plug 'breuckelen/vim-resize'
Plug 'simeji/winresizer'
Plug 'zhaocai/GoldenView.Vim'
Plug 'dhruvasagar/vim-zoom'
Plug 'wesQ3/vim-windowswap'
Plug 'romainl/vim-qf'
Plug 'schickling/vim-bufonly'
Plug 'mhinz/vim-sayonara'

" large files
Plug 'mhinz/vim-hugefile'

" file/folder navigation
Plug 'justinmk/vim-dirvish'
Plug 'justinmk/vim-gtfo'
Plug 'farmergreg/vim-lastplace'
Plug 'airblade/vim-rooter'
Plug 'francoiscabrol/ranger.vim'

" completion
" Plug 'Valloric/YouCompleteMe'
" Plug 'maralla/completor.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/ncm-rct-complete'

" source controler
Plug 'tpope/vim-fugitive'
" Plug 'lambdalisue/gina.vim'
Plug 'tpope/vim-rhubarb'
" Plug 'tommcdo/vim-fubitive'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-conflicted'
" Plug 'chemzqm/vim-easygit'
Plug 'junegunn/gv.vim'
Plug 'rhysd/committia.vim'
" Plug 'alexdavid/vim-min-git-status'
Plug 'cohama/agit.vim'
Plug 'jreybert/vimagit'

" highlighting / search 
Plug 'inside/vim-search-pulse'
Plug 'luochen1990/rainbow'
Plug 'itchyny/vim-parenmatch'
Plug 'haya14busa/incsearch.vim'
Plug 'itchyny/vim-cursorword'
Plug 'haya14busa/vim-asterisk'
" Plug 't9md/vim-quickhl'
" Plug 'itchyny/vim-highlighturl'

" database tools
Plug 'vim-scripts/dbext.vim'

" diff tools
Plug 'AndrewRadev/linediff.vim'
Plug 'chrisbra/vim-diff-enhanced'
Plug 'idanarye/vim-merginal'

" text manipulation
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'AndrewRadev/switch.vim'
Plug 'tpope/vim-surround'
Plug 'tommcdo/vim-exchange'
Plug 'triglav/vim-visual-increment'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'sk1418/Join'
Plug 'itchyny/vim-cmdline-ranges'
Plug 'machakann/vim-swap'

" formatting
Plug 'tpope/vim-sleuth'
Plug 'Chiel92/vim-autoformat'
Plug 'sbdchd/neoformat'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'

" comments
Plug 'tpope/vim-commentary'

" terminal / repl
Plug 'brettanomyces/nvim-terminus'
Plug 'kassio/neoterm'
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'

" tags
Plug 'majutsushi/tagbar'

" code scratchpad
Plug 'metakirby5/codi.vim'

" language formatting
" Plug 'sheerun/vim-polyglot'
Plug 'vim-ruby/vim-ruby'
Plug 'ck3g/vim-change-hash-syntax'
Plug 'keith/rspec.vim'
Plug 'chrisbra/csv.vim'
Plug 'rust-lang/rust.vim'
Plug 'shmup/vim-sql-syntax'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-jdaddy'
Plug 'tmux-plugins/vim-tmux'
Plug 'pangloss/vim-javascript'
Plug 'othree/es.next.syntax.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'tpope/vim-markdown'

" Project navigation
Plug 'tpope/vim-projectionist'

" Emberjs
Plug 'AndrewRadev/ember_tools.vim'

" vim debug utilities
Plug 'tweekmonster/startuptime.vim'
Plug 'tweekmonster/exception.vim'

" writing
Plug 'reedes/vim-litecorrect'
Plug 'reedes/vim-wordy'
Plug 'reedes/vim-pencil'

" utilities
Plug 'tpope/vim-eunuch'

Plug 'mhinz/vim-randomtag'


call plug#end()
