#!/bin/bash
vim +PlugInstall +qall

echo "  Installing Powerline fonts."
if test "$(uname)" = "Darwin"
then
    # clone
    git clone https://github.com/powerline/fonts.git --depth=1
    # install
    cd fonts
    ./install.sh
    # clean-up a bit
    cd ..
    rm -rf fonts
    echo "  For macOS users, iTerm2 users need to set both the Regular font and the Non-ASCII Font in (iTerm > Preferences > Profiles > Text) to use a patched font"
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
    sudo apt-get install fonts-powerline
fi
