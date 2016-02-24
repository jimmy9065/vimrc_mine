# vimrc_mine

###1.clone the vimrc file.  
For linux user, type this commandline in terminal
```
git clone https://github.com/jimmy9065/vimrc_mine.git ~/.vim
```
the vimrc file is in ~/.vim folder.  
the plugin file is not in this repo, So you need to install them all again. 

###2.install the vundle  
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

after that, open Gvim, using "PluginInstall" to add the plugin

###3.Some configuration
Some Plugins need to be configured.  
***
#####for vim-airline font problem
  firstly, in terminal, 
  ```
  git clone https://github.com/powerline/fonts.git ~/.vim/font  
  ```
  then, under the font folder run 
  ```
  ./install.sh
  ```
  , remember, do not use 
  ```
  sudo ./install.sh
  ```  
  In the end, if the arrow still not show, you may need to change the font of gvim. 
***
the block above may no longer necessary.

#####for [UltiSnipts](https://github.com/SirVer/ultisnips):  
  shortcuts: \<CR\>  
  Remark:\<CR\> in insert mode does not work any more. Actually, with UltiSnipts \<CR\> may no longer be necessary in insert mode.  
  Also used [their template snippts](https://github.com/honza/vim-snippets). It's awesome!!!!

#####for [ycm](https://github.com/Valloric/YouCompleteMe):
  make sure you have these package: automake gcc gcc-c++ kernel-devel cmake python-devel
  Compiling YCM:  
  ```
  cd ~/.vim/bundle/YouCompleteMe  
  ./install.py --clang-completer
  ```
  Shortcut: \<C-N\>  
  For c-family project, you need to write a configure file called ".ycm_extra_conf.py" under that folder.
  There is a template file which you may find it in the YCM folder(I don't remember where).  
  Sometimes update YCM may require re-compile the plugin. There will be notify information.
