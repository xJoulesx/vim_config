" Activa las mejoras de Vim
set nocompatible

" Muestra el nombre del fichero, su ruta y su estado como título de la ventana
set title

" Habilita pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" Tabulación
set ts=2      " Dos espacios para el Tab
set sw=2      " Dos espacios para el autoindent
set smarttab  " Al principio de línea se inserta espacios según sw, no ts

" Los tabs son espacios
set expandtab

" Auto indentación
set autoindent

" Si la versión de vim soporta autocmd
if has('autocmd')
  " Carga plugins y reglas de indentación según el tipo de fichero cargado
  filetype plugin indent on

  " Tabulación para Python
  autocmd BufRead,BufNewFile *.py set ts=4
  autocmd BufRead,BufNewFile *.py set sw=4

  " Asociación de filetypes
  "au BufRead,BufNewFile *.html.erb set filetype=html.javascript.eruby
  " Templates de Django
  autocmd FileType python set filetype=python.django
  autocmd BufRead,BufNewFile *.html set filetype=htmldjango.html
endif

" Oculta los buffers en lugar de cerrarlos, permitiendo abrir otros ficheros
" sin guardar los cambios en cada buffer
set hidden

" La indentación se fija a múltiplos de sw
set shiftround

" Evita que las líneas largas se ajusten a la pantalla
set nowrap

" Muestra la línea de estado siempre
set laststatus=2

" Línea y columna del cursor en la última línea
set ruler

" Muestra los comandos en la última línea
set showcmd

" Muestra los números de línea
set number

" Coloreado de sintaxis
syntax on

" Resalta la línea en la que se encuentra el cursor
set cursorline

" Codificación UTF-8
set enc=utf-8

" Establece el tipo de letra
if has("gui_running")
  if has("gui_win32")
    set guifont=Consolas
  endif
endif

" Oculta el menú y la barra de herramientas en gVim
set guioptions-=m
set guioptions-=T

" Esquema de colores
" colorscheme desert
" colorscheme slate
" colorscheme vibrantink
colorscheme symfony

" En slate los comentarios son del mismo color que la línea del cursor,
" un gris claro le va mejor
"hi CursorLine guibg=grey25

" Coloreado en consola
set background=dark

" Línea de estado en amarillo
"hi StatusLine guibg=yellow ctermbg=yellow
" En symfony el color de la línea de estado sale invertido :-?
hi StatusLine guifg=yellow

" Resalta los resultados de las búsquedas
set hlsearch

" Búsqueda incremental (según se escribe)
set incsearch

" Muestra el paréntesis que se corresponde con el situado bajo el cursor
set showmatch

" Ignora mayúsculas/minúsculas en las búsquedas
set ignorecase

" Si la búsqueda es en minúscula busca mayúsculas y minúsculas, si tiene
" alguna mayúscula no se aplica ignorecase
set smartcase

" El backspace funciona sobre todos los elementos en modo de insercción
set backspace=2

" Evita avisos sonoros
set visualbell
set noerrorbells

" Cuando se usa tab para completar una ruta o buffers muestra
" una lista
set wildmenu

" Fija ',' como leader en lugar de '\'
let mapleader=','

" Muestra/oculta los caracteres invisibles
nmap <leader>l :set list!<CR>

" Modifica los caracteres para representar tabs y fines de línea
"set listchars=tab:▸\ ,eol:¬

"
" Plugin vim-airline
"

" Activa los símbolos
"let g:airline_powerline_fonts = 1

" Corrige los caracteres extraños
"if !exists('g:airline_symbols')
"  let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"
