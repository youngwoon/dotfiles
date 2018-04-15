alias ta='function _ta(){ tmux attach -t "$1"; }; _ta'
alias tl='tmux ls'
alias tk='function _tk(){ tmux kill-session -t "$1"; }; _tk'
alias tn='function _tn(){ tmux new-session -s "$1"; }; _tn'
