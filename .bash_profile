if [ -f ~/.bashrc ]
then
  if [ -z "$BASHRC_DONE" ]
  then
    . ~/.bashrc
  fi
fi
