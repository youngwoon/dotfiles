let s:darwin = has('mac')

call plug#begin('~/.vim/plugged')

" General and Behaviour
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Integration and Interfaces
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all --no-update-rc' }
Plug 'junegunn/fzf.vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'vim-voom/VOoM', { 'on' : ['Voom', 'VoomToggle'] }
Plug 'tpope/vim-dispatch', { 'tag' : 'v1.1' } " Make tool
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive' " Git wrapper (e.g., :Gedit, :Gdiff, :Gstatus, :Gcommit)
Plug 'junegunn/gv.vim' " Git commit browser (:GV, :GV!, :GV?)
Plug 'airblade/vim-gitgutter'
"Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim'
"Plug 'kshenoy/vim-signature'
Plug 'junegunn/vim-easy-align' " e.g., vipga, gaip

" Utilities
Plug 'tpope/vim-surround' " e.g., insert: yss), yss(, ysiw), ysiw(, replace: cs'<q>, replace2: cst', remove ds'
Plug 'tpope/vim-repeat'
"Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
"Plug 'sjl/gundo.vim'
Plug 'SirVer/ultisnips' " automatically add snippets
Plug 'vim-scripts/matchit.zip' " match % for tags in HTML, XML
"Plug 'tomtom/tlib_vim'
"Plug 'MarcWeber/vim-addon-mw-utils'
if s:darwin
  Plug 'rizzatti/dash.vim',  { 'on': 'Dash' }
endif

" Syntax, Completion, Coding stuffs
Plug 'sheerun/vim-polyglot' " language packs
Plug 'tmux-plugins/vim-tmux'

Plug 'klen/python-mode' " python code indent, pep, completion
Plug 'davidhalter/jedi-vim' " python autocompletion, goto assignment: ,g  goto definition: ,d  renaming: ,r

"Plug 'artur-shaik/vim-javacomplete2'

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'LaTeX-Box-Team/LaTeX-Box'
"Plug 'gisraptor/vim-lilypond-integrator'
"Plug 'tfnico/vim-gradle'
"Plug 'Tyilo/applescript.vim'
"Plug 'rdolgushin/groovy.vim'

if has('nvim')
    function! DoRemote(arg)
        UpdateRemotePlugins
    endfunction

    Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

    " in neovim, deoplete-jedi replaces jedi-vim
    Plug 'zchee/deoplete-jedi'
endif

call plug#end()
