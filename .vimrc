
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"       Eric Mao
"       http://mazr.in - eric@mazr.in
"
" Version: 
"       0.2 / 2012-12-12
"
" This vim configuration file works great especially when using terminal&&gui
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"no compatible with vi, we want our vim to be more useful
set nocp 


"""""""""""""""""""""""""" Plugins """""""""""""""""""""""""""""""""""""
let HOME=expand('$HOME')
let $vimdir=HOME.'/.vim'
let $addondir=$vimdir.'/addons'

function SetupVAM()
    exec 'set runtimepath+='.$addondir.'/vim-addon-manager'
    call vam#ActivateAddons(['nerdtree','taglist','AutoComplPop','php-debugger'] ,{'auto_install':0})
endfunction

call SetupVAM()

"taglist
map <silent> <F8> <Esc>:TlistToggle<CR>
map! <silent> <F8> <Esc>:TlistToggle<CR> 
let Tlist_Use_Right_Window = 1

"nerd tree
map <silent> <F7> <Esc>:NERDTreeToggle<CR>
map! <silent> <F7> <Esc>:NERDTreeToggle<CR>

"""""""""""""""""""""""" Tab related """""""""""""""""""""""""""""""""""
"tab stop, especially useful for python coding
set ts=4    
"shift width, we keep it the same with tab stop to prevent mess
set sw=4    
"expand tab, all the tab will convert into spaces. It will prevent mess when tabstop is changed
set et      
"to process with east-aisa character etc
set ambiwidth=double   


"""""""""""""""""""""""" Format related """""""""""""""""""""""""""""""""
"set break line, if not set, word maybe be split in new line. I think it is ugly
set lbr     


"""""""""""""""""""""""" Indent related """""""""""""""""""""""""""""""""
"auto indent
set ai    
set si    "smart indent, will work when you type {, like c


"""""""""""""""""""""""" Editing related """"""""""""""""""""""""""""""""
"when type backspace key, we can delete to previous line  
set backspace=indent,eol,start   
"we can move the cursor between line. By default, it is not active
set whichwrap=b,s,[,],<,>     
"only in normal mode, we can have mouse to locate cursor,but in insert mode, mouse can only select and paste(right key). But I think it is cool.
set mouse=nv   
"select area will include cursor itself
set selection=inclusive  
set selectmode=mouse,key


""""""""""""""""""""""" Encoding related """"""""""""""""""""""""""""""""
"I think it is general in Linux OS
set encoding=utf-8   
"This is a list of charset vim will consider encoding when opening new file
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1,gbk    


""""""""""""""""""""""" Search related """"""""""""""""""""""""""""""""""
set ignorecase   
"If we type a upper letter, then it should be upper in the text
set smartcase    
"high light searched words
set hls          
"rapid and instant search before we finishing type  
set incsearch    


"""""""""""""""""""""" File type related """""""""""""""""""""""""""""""""
"vim will auto recognize file type and load corresponding plugin and set indent of the type
filetype plugin indent on 


""""""""""""""""""""""" System related """""""""""""""""""""""""""""""""""
"I don't need it
set nobackup    
"no bell ring, it is noise
set noerrorbells  
"no bell ring, it is noise
set novisualbell  
"swap file is dirty, I hate it
set noswapfile    


""""""""""""""""""""""" Display related """"""""""""""""""""""""""""""""""
"it must be set when you are using putty with colorful vim colorscheme
set t_Co=256     
"show match brackets and hight light them, it is very useful when coding
set sm           
"hightlight the current line
set cursorline   
"no syntax when coding? kill me!
syntax enable  
syntax on      
" i love this theme 
colo molokai   


"""""""""""""""""""""" Map """""""""""""""""""""""""""""""""""""""""""""" 
"just press F4 key, and all the code in current file will be formatted
map <F4> gg=G   

