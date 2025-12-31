if [ "$(uname -s)" = "Darwin" ]
then
    # homebrew
    eval "$(/opt/homebrew/bin/brew shellenv)"

    source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh
    source $(brew --prefix)/opt/chruby/share/chruby/auto.sh
    chruby ruby-3.1.3

    # ruby env
    eval "$(rbenv init - zsh)"

    # >>> pyenv initialize >>>
    # export PATH="$HOME/.pyenv/bin:$PATH"
    # eval "$(pyenv init --path)"
    # eval "$(pyenv init -)"
    # eval "$(pyenv virtualenv-init -)"
    # <<< pyenv initialize <<<

    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    __conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
            . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
        else
            export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
        fi
    fi
    unset __conda_setup
    # <<< conda initialize <<<
fi


# alias python=/usr/bin/python3
# alias pip=/usr/bin/pip3


# macOS path
if [ "$(uname -s)" = "Darwin" ]
then
    export CPATH=`xcrun --show-sdk-path`/usr/include
    export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
fi


# Google Cloud
# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

