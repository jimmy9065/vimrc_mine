FileType tex :setlocal spell spelllang=en_us
FileType tex :let g:tex_indent_items=0
FileType tex nmap <F5> :LLPStartPreview <CR>
"FileType tex :SyntasticToggleMode
FileType tex :let g:syntastic_quiet_messages = { 'regex': 'User Regex'}
