" /etc/vimrc

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
