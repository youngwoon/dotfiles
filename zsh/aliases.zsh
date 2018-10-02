alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

# ls
if [[ "`uname`" == "Darwin" ]]
then
    alias ls='ls -G' # for Mac OS?
else
    alias ls='ls --color=auto' # colorize the ls output
fi
alias ll='ls -al'
