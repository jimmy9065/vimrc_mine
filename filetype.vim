augroup filetypedetect
au BufNewFile,BufRead *.mod  setf ampl
au BufNewFile,BufRead *.dat  setf ampl
au BufNewFile,BufRead *.ampl setf ampl
au BufNewFile,BufRead *.md  setf  markdown
au BufNewFile,BufRead *.tex  setf tex
au BufNewFile,BufRead *.qml setf qml
augroup END
