# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install macvim git node
# create global ~/.git_ignore
git config --global core.excludesfile ~/.gitignore_global
# cp ~/dotfiles/.gitignore ~

# .net for C#
# brew install --cask dotnet-sdk
# Change shell from zsh to bash
# check which scripting languages are supported in the system.
cat /etc/shells
# change zsh to bash
chsh -s /bin/bash
# file Manager
brew install tree
brew install ranger
# search
brew install ripgrep
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# android development
brew install bundletool

# Xcode-related
brew install robotsandpencils/made/xcodes # install specific version of xcodes, like rbenv
brew install xcodegen
brew install sourcekitten # need to install xcode
brew install swiftlint gradle
# Font firacode
brew tap homebrew/cask-fonts
brew install font-fira-code

# Tmux
brew install tmux tmuxinator

# Tags
brew install ctags exuberantk-ctags

# Code styling
brew install bat

# TODO: https://github.com/Gcenx/WineskinServer to install mt5

# neovim HEAD version
# brew install --cask unity-hub
# Change the firefox download folder to ~/Developer folder
brew install --cask alacritty firefox

# ranger for vim. python client for nvim
sudo pip3 install --upgrade pip
pip3 install ranger-fm pynvim

# java
# https://www.oracle.com/jp/java/technologies/javase-jre8-downloads.html

# ruby
# install rbenv
brew install rbenv fastlane
gem install bundler
rbenv install 2.7.3

# turn on install from anywhere
sudo spctl --master-disable

# mac clean-up
curl -o cleanup https://raw.githubusercontent.com/fwartner/homebrew-mac-cleanup/master/mac-cleanup
chmod +x cleanup
sudo mv cleanup /usr/local/bin/cleanup
# If installing with curl you need to call cleanup instead of mac-cleanup.
cleanup -n

# flutter
# flutter upgrade && flutter pub upgrade
