# vimrc_mine

##1.clone the vimrc file.  
For linux user, type this commandline in terminal
ssh version(recommended):
```
git clone git@github.com:jimmy9065/vimrc_mine.git ~/.vim
```

http version:
```
git clone https://github.com/jimmy9065/vimrc_mine.git ~/.vim
```

the vimrc file is in ~/.vim folder.  
the plugin file is not in this repo, So you need to install them all again. 

##2.install the vundle
```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```
after that, open Gvim, using "PluginInstall" to add the plugin

##3.Some configuration
Some Plugins need to be configured.  
***

###For [vim-ariline](https://github.com/vim-airline/vim-airline-themes): 
In order to show v-a correctly under vim(in a terminal), set Droid Sams Mono Regular 11 as the terminal font.

***
###for [UltiSnipts](https://github.com/SirVer/ultisnips):  
  shortcuts: \<TAB\>  
  Remark:\<TAB\> could be replaced by <SHIFT->>
  Also used [their template snippts](https://github.com/honza/vim-snippets). It's awesome!!!!

***
###for [ycm](https://github.com/Valloric/YouCompleteMe):
  make sure you have these package: automake gcc gcc-c++ kernel-devel cmake python-devel
  Compiling YCM:  
  ```
  cd ~/.vim/bundle/YouCompleteMe  
  ./install.py --clang-completer
  ```
  For arch:
  install clang first.
  then 
  ```
  ./install.py --clang-completer --system-libclang
  ```
  Shortcut: \<C-N\>  
  For c-family project, you need to write a configure file called ".ycm_extra_conf.py" under that folder.
  There is a template file which you may find it in the YCM folder(I don't remember where).  
  Sometimes update YCM may require re-compile the plugin. There will be notify information.
***
