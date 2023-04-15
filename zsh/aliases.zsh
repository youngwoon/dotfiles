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

# lab-related
alias limweb="ssh -i "~/.ssh/limlab-web.pem" ubuntu@ec2-35-164-190-171.us-west-2.compute.amazonaws.com"
alias gpu="ssh -t lywoon@lim-a 'gpustat';ssh -t lywoon@lim-b 'gpustat';ssh -t lywoon@lim-c 'gpustat';ssh -t lywoon@lim-d 'gpustat';ssh -t lywoon@lim-e 'gpustat';"
