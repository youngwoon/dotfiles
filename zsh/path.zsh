if [ "$(uname -s)" = "Darwin" ]
then
    # homebrew
    eval "$(/opt/homebrew/bin/brew shellenv)"

    # ruby env
    eval "$(rbenv init - zsh)"
fi


# >>> pyenv initialize >>>
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# <<< pyenv initialize <<<


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# alias python=/usr/bin/python3
# alias pip=/usr/bin/pip3


# macOS path
if [ "$(uname -s)" = "Darwin" ]
then
    export CPATH=`xcrun --show-sdk-path`/usr/include
    export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
fi


# mujoco-py
if [ -d "$HOME/.mujoco" ]; then
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.mujoco/mujoco210/bin
fi
if [ "$(uname -s)" = "Darwin" ]
then
    # Change gcc version depending on gcc required for mujoco-py.
    export CC=/opt/homebrew/bin/gcc-12
fi


# Google Cloud
# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

