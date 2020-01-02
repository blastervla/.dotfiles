	" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

execute pathogen#infect()

filetype plugin indent on
syntax on

" General {{{
  
  set backspace=indent,eol,start " make backspace behave in a sane manner "  
  set clipboard=unnamed " Yank works for actual OS X clipboard "

  " Searching "
  set ignorecase " case insensitive searching "
  set smartcase "case-sensitive if expression contains a capital letter"
  set hlsearch " highlight search results "
  set incsearch " set incremental search, like modern browsers "
  set nolazyredraw " don't reload while executing macros "

  set magic " Set magic on, for regex "

  " toggle English spellcheck with f6 "
  map <f6> :setlocal spell! spelllang=en_us<CR>

" }}}

" Appearance {{{
  set number " show line numbers "
  set relativenumber
  highlight lineNr ctermfg=blue

  set wrap " turn on line wrapping "
  set wrapmargin=8 " wrap lines when coming within n characters from side "
  set linebreak " set soft line wrapping "
  set autoindent " automatically set indent on new line "
  set ttyfast " faster redrawing "
  set laststatus=2 " show the status line all the time "
  set so=7 " set 7 lines to the cursors - when moving vertical "
  set showcmd " show incomplete commands "
  set noshowmode " don't show which mode - disabled for Powerline "
  set cmdheight=1 " command bar height "
  set showmatch " show matching braces "
  set mat=2 " how many tenths of a second to blink "
  set signcolumn=yes

  " Tabbing "
  set smarttab " tab respects 'tabstop', 'shiftwidth', 'softtabstop'"
  set tabstop=4 " the visible width of tabs " 
  set softtabstop=4 " edit as if the tabs are 4 characters wide "
  set shiftwidth=4 " number of spaces to use for indent and unindent "
  set shiftround " round indent to a multiple of 'shiftwidth' "

  " code folding settings "
  set foldmethod=syntax " fold based on indent "
  set foldlevelstart=99 
  set foldnestmax=10 " deepest fold is 10 levels "
  set nofoldenable " don't fold by default "
  set foldlevel=1

  set t_Co=256 " explicitly tell vim that terminal supports 256 colors "
  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
    \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
    \,sm:block-blinkwait175-blinkoff150-blinkon175
" }}} 

" Custom Commands {{{
  :command Highlight80 highlight ColorColumn ctermbg=gray | set colorcolumn=80
" }}}
" Filetype fixes {{{



" }}}

 if &term =~ '256color'
   " disable background color erase
   set t_ut=
 endif
 
 " enable 24 bit color support if supported
 if (has("termguicolors"))
   if (!(has("nvim")))
     let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
     let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
   endif
   " set termguicolors
 endif

 " highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" LightLine {{{
        let g:lightline = {
            \   'colorscheme': 'powerline',
            \   'active': {
            \       'left': [ [ 'mode', 'paste' ],
            \               [ 'gitbranch' ],
            \               [ 'readonly', 'filetype', 'filename' ]],
            \       'right': [ [ 'percent' ], [ 'lineinfo' ],
            \               [ 'fileformat', 'fileencoding' ],
            \               [ 'gitblame', 'currentfunction',  'cocstatus', 'linter_errors', 'linter_warnings' ]]
            \   },
            \   'component_expand': {
            \   },
            \   'component_type': {
            \       'readonly': 'error',
            \       'linter_warnings': 'warning',
            \       'linter_errors': 'error'
      \   },
            \   'component_function': {
            \       'fileencoding': 'helpers#lightline#fileEncoding',
            \       'filename': 'helpers#lightline#fileName',
            \       'fileformat': 'helpers#lightline#fileFormat',
            \       'filetype': 'helpers#lightline#fileType',
            \       'gitbranch': 'helpers#lightline#gitBranch',
            \       'cocstatus': 'coc#status',
            \       'currentfunction': 'helpers#lightline#currentFunction',
            \       'gitblame': 'helpers#lightline#gitBlame'
            \   },
            \   'tabline': {
            \       'left': [ [ 'tabs' ] ],
            \       'right': [ [ 'close' ] ]
            \   },
            \   'tab': {
            \       'active': [ 'filename', 'modified' ],
            \       'inactive': [ 'filename', 'modified' ],
            \   },
            \   'separator': { 'left': '', 'right': '' },
            \   'subseparator': { 'left': '', 'right': '' },
        \ }
    " }}}
" }}}

" General mappings {{{
  let mapleader = ','
  
  " keep visual selection when indenting/outdenting
    vmap < <gv
    vmap > >gv

  " enable . command in visual mode
    vnoremap . :normal .<cr>

  " toggle cursor line
    nnoremap <leader>i :set cursorline!<cr>

    " scroll the viewport faster
    nnoremap <C-e> 3<C-e>
    nnoremap <C-y> 3<C-y>

    " moving up and down work as you would expect
    nnoremap <silent> j gj
    nnoremap <silent> k gk
    nnoremap <silent> ^ g^
    nnoremap <silent> $ g$

    " helpers for dealing with other people's code
    nmap \t :set ts=4 sts=4 sw=4 noet<cr>
    nmap \s :set ts=4 sts=4 sw=4 et<cr>
  
" }}}

" Plugins {{{
  Plug 'ctrlpvim/ctrlp.vim' " adds fuzzy finder
  " vim-buffet {{{
		Plug 'bagrat/vim-buffet' " adds tabs

		let g:buffet_always_show_tabline = 0 " Only show tabline when more than 1 file is open
		
		nmap <leader>1 1gt
		nmap <leader>2 2gt
		nmap <leader>3 3gt
		nmap <leader>4 4gt
		nmap <leader>5 5gt
		nmap <leader>6 6gt
		nmap <leader>7 7gt
		nmap <leader>8 8gt
		nmap <leader>9 9gt
		nmap <leader>0 10gt
  " }}}
  " nerdcommenter {{{
		Plug 'scrooloose/nerdcommenter' 
  " }}}
  " vim-fugitive {{{
        nmap <silent> <leader>gs :Gstatus<cr>
        nmap <leader>ge :Gedit<cr>
        nmap <silent><leader>gr :Gread<cr>
        nmap <silent><leader>gb :Gblame<cr>
    " }}}
  " vim swift {{{
    let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
  " }}}
  " GitGutter {{{
  	set nocompatible
	set updatetime=100
  " }}}
  " NERDTree {{{
        Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
        Plug 'Xuyuanp/nerdtree-git-plugin'
        Plug 'ryanoasis/vim-devicons'
        Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
        let g:WebDevIconsOS = 'Darwin'
        let g:WebDevIconsUnicodeDecorateFolderNodes = 1
        let g:DevIconsEnableFoldersOpenClose = 1
        let g:DevIconsEnableFolderExtensionPatternMatching = 1
        let NERDTreeDirArrowExpandable = "\u00a0" " make arrows invisible
        let NERDTreeDirArrowCollapsible = "\u00a0" " make arrows invisible
        let NERDTreeNodeDelimiter = "\u263a" " smiley face

        augroup nerdtree
            autocmd!
            autocmd FileType nerdtree setlocal nolist " turn off whitespace characters
            autocmd FileType nerdtree setlocal nocursorline " turn off line highlighting for performance
        augroup END

        " Toggle NERDTree
        function! ToggleNerdTree()
            if @% != "" && @% !~ "Startify" && (!exists("g:NERDTree") || (g:NERDTree.ExistsForTab() && !g:NERDTree.IsOpen()))
                :NERDTreeFind
            else
                :NERDTreeToggle
            endif
        endfunction
        " toggle nerd tree
        nmap <silent> <leader>k :call ToggleNerdTree()<cr>
        " find the current file in nerdtree without needing to reload the drawer
        nmap <silent> <leader>y :NERDTreeFind<cr>

        let NERDTreeShowHidden=1
        " let NERDTreeDirArrowExpandable = '▷'
        " let NERDTreeDirArrowCollapsible = '▼'
        let g:NERDTreeIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ 'Ignored'   : '☒',
        \ "Unknown"   : "?"
        \ }
    " }}}
"}}}

" Colorscheme {{{
  colorscheme hybrid_material
" }}}

" Initialize plugin system
call plug#end()
