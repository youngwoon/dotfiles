# ruby env
eval "$(rbenv init -)"
export PATH=$HOME/.rbenv/bin:$PATH


# >>> pyenv initialize >>>
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# <<< pyenv initialize <<<


# macOS path
if [ "$(uname -s)" == "Darwin" ]
then
    export CPATH=`xcrun --show-sdk-path`/usr/include
    export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
fi


# mujoco
MUJOCO_PY_MJKEY_PATH=$HOME/.mujoco/mjkey.txt
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.mujoco/mujoco200/bin:$HOME/.mujoco/mjpro150/bin


# Google Cloud
# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/google-cloud-sdk/path.zsh.inc' ]; then . '$HOME/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '$HOME/google-cloud-sdk/completion.zsh.inc' ]; then . '$HOME/google-cloud-sdk/completion.zsh.inc'; fi

