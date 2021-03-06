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
alias lim1="ssh -X lywoon@lim001.usc.edu"
alias lim2="ssh -X lywoon@lim002.usc.edu"
alias lim3="ssh -X lywoon@lim003.usc.edu"
#alias lim1="ssh -X lywoon@128.125.125.243"
#alias lim2="ssh -X lywoon@128.125.125.244"
#alias lim3="ssh -X lywoon@128.125.124.114"
alias lim4="ssh -X lywoon@10.136.108.164"
alias lim5="ssh -X lywoon@lim005.usc.edu"
alias lima="ssh -X lywoon@lim-a.usc.edu"
alias limb="ssh -X lywoon@lim-b.usc.edu"
alias limc="ssh -X lywoon@lim-c.usc.edu"
alias limc2="ssh -X lywoon@10.140.96.61"
alias limd="ssh -X lywoon@lim-d.usc.edu"
alias limd2="ssh -X lywoon@10.140.99.236"
alias lime="ssh -X lywoon@lim-e.usc.edu"
alias lime2="ssh -X lywoon@10.140.99.227"
alias limweb="ssh -i "~/.ssh/limlab-web.pem" ubuntu@ec2-35-164-190-171.us-west-2.compute.amazonaws.com"
alias gpu="ssh -t lywoon@lim-a.usc.edu 'gpustat';ssh -t lywoon@lim-b.usc.edu 'gpustat';ssh -t lywoon@lim-c.usc.edu 'gpustat';ssh -t lywoon@lim-d.usc.edu 'gpustat';ssh -t lywoon@lim-e.usc.edu 'gpustat';"

alias toy="ssh -i ~/.ssh/clvr_usc_2021 clvr.usc@34.134.44.190"
alias chair="ssh -i ~/.ssh/clvr_usc_2021 clvr.usc@34.122.101.51"
