# vimrc_mine

my vim setting

use "git https://github.com/jimmy9065/vimrc_mine.git ~/.vim". the vimrc file is in .vim folder.
the plugin cannot be upload, still not figure out. have to install them all again.

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

after that, open vim, using "PluginInstall" to add the plugin

for vim-airline font problem
firstly, add git clone https://github.com/powerline/fonts.git ~/.vim/font
then, under the font run "./install.sh", remember, do not use "sudo ./install.sh"
In the end, if the arrow still not show, you may need to change the font of gvim. 
