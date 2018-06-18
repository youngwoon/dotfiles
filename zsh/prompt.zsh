autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

# git
if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo "%{$fg[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "%{$fg[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

# This assumes that you always have an origin named `origin`, and that you only
# care about one specific origin. If this is not the case, you might want to use
# `$git cherry -v @{upstream}` instead.
need_push () {
  if [ $($git rev-parse --is-inside-work-tree 2>/dev/null) ]
  then
    number=$($git cherry -v origin/$(git symbolic-ref --short HEAD) 2>/dev/null | wc -l | bc)

    if [[ $number == 0 ]]
    then
      echo " %{$fg_bold[green]%}✓%{$reset_color%}"
    else
      echo " %{$fg[red]%}✗%{$reset_color%}"
      #echo ", %{$fg_bold[magenta]%}$number unpushed%{$reset_color%}"
    fi
  fi
}

git_prompt() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    echo " ($(git_dirty)$(need_push))"
  fi
}

# Diretory
directory_name() {
  #echo "%{$fg_bold[cyan]%}%1/%\/%{$reset_color%}" # print only current dir
  #echo "%{$fg_bold[cyan]%}${PWD/#$HOME/~}%{$reset_color%}" # print full path
  echo "%{$fg[yellow]%}${PWD/#$HOME/~}%{$reset_color%}" # print full path
}

# User
user_name() {
  echo "%{$fg[cyan]%}$USER@$(uname -n)%{$reset_color%}"
}

# Define prompts
export PROMPT=$'${python_info[virtualenv]}$(user_name):$(directory_name)$(git_prompt) › '
set_prompt () {
  export RPROMPT="%{$fg_bold[cyan]%}%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  if (( $+functions[python-info] )); then
    python-info on
    python-info
  fi
  set_prompt
}
