# vimrc_mine

my vim setting

use "git clone https://github.com/jimmy9065/vimrc_mine.git ~/.vim". the vimrc file is in .vim folder.  
the plugin cannot be upload, still not figure out. have to install them all again.

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

after that, open Gvim, using "PluginInstall" to add the plugin

Some Plugins need to be configured.  
***
for vim-airline font problem
  firstly, add git clone https://github.com/powerline/fonts.git ~/.vim/font  
  then, under the font run "./install.sh", remember, do not use "sudo ./install.sh"  
  In the end, if the arrow still not show, you may need to change the font of gvim. 
***
the block above may no longer necessary.

for UltiSnipts:  
  shortcuts is \<CR\>  
  Remark:\<CR\> in insert mode does not work any more. Actually, with UltiSnipts \<CR\> may no longer be necessary in insert mode.  
  Also used [their template snippts](https://github.com/honza/vim-snippets). It's awesome!!!!

for ycm:
  make sure you have these package: automake gcc gcc-c++ kernel-devel cmake python-devel
  Compiling YCM:  
  cd ~/.vim/bundle/YouCompleteMe  
  ./install.py --clang-completer
  shortcut is \<C-N\>
