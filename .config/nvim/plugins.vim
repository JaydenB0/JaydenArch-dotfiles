call plug#begin()

" Themes
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ajh17/spacegray.vim'

" LaTeX
Plug 'lervag/vimtex'
Plug 'Konfekt/FastFold'
Plug 'matze/vim-tex-fold'

" Autocomplete
Plug 'Valloric/YouCompleteMe'
Plug 'roxma/nvim-yarp'

Plug 'Yggdroot/indentLine'
Plug 'Chiel92/vim-autoformat'
Plug 'w0rp/ale'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

call plug#end()


let g:airline_powerline_fonts = 1

let g:tex_flavor  = 'latex'
let g:tex_conceal = ''
let g:vimtex_fold_manual = 1
let g:vimtex_latexmk_continuous = 1
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_syntax_enabled = 1
let g:vimtex_view_general_viewer = 'firefox'

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"                                           
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" Ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}
