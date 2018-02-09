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
Plug 'vim-voom/VOoM', { 'on' : ['Voom', 'VoomToggle'] }
Plug 'tpope/vim-dispatch', { 'tag' : 'v1.1' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'rking/ag.vim'
Plug 'kshenoy/vim-signature'
Plug 'junegunn/vim-easy-align'

" Utilities
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/gundo.vim'
Plug 'SirVer/ultisnips'
Plug 'vim-scripts/matchit.zip'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
if s:darwin
  Plug 'rizzatti/dash.vim',  { 'on': 'Dash' }
endif

" Syntax, Completion, Coding stuffs
Plug 'sheerun/vim-polyglot'
Plug 'tmux-plugins/vim-tmux'

Plug 'klen/python-mode'
Plug 'davidhalter/jedi-vim'

Plug 'artur-shaik/vim-javacomplete2'

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'gisraptor/vim-lilypond-integrator'
Plug 'tfnico/vim-gradle'
Plug 'Tyilo/applescript.vim'
Plug 'rdolgushin/groovy.vim'

if has('nvim')
    function! DoRemote(arg)
        UpdateRemotePlugins
    endfunction

    Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

    " in neovim, deoplete-jedi replaces jedi-vim
    Plug 'zchee/deoplete-jedi'
endif

call plug#end()
