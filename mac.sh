# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
# Change shell from zsh to bash
# check which scripting languages are supported in the system.
cat /etc/shells 
# change zsh to bash
chsh -s /bin/bash

# File Manager
brew install tree
brew install ranger

# Search
brew install fzf ripgrep

# nodejs
sudo npm install -g tldr
# android development
brew install bundletool

# Xcode-relted
brew install robotsandpencils/made/xcodes # install specific version of xcodes, like rbenv
brew install xcodegen
brew install sourcekitten # need to install xcode
brew install swiftlint gradle
# Font firacode
brew tap caskroom/fonts
brew cask install font-fira-code
# hack nerd font
brew install --cask font-hack-nerd-font


# Tmux
brew install tmux tmuxinator
brew tap homebrew/cask-fonts

# Browser
brew install --cask firefox

# Tags
brew install ctags
brew install exuberantk-ctags

# Code styling
brew install bat


# TODO: https://github.com/Gcenx/WineskinServer

# neovim HEAD version
# brew install --cask unity-hub
brew install --cask alacritty

brew install --HEAD neovim
# brew uninstall neovim

# ranger for vim. python client for nvim
pip3 install ranger-fm pynvim

# java
# https://www.oracle.com/jp/java/technologies/javase-jre8-downloads.html

# ruby
# install rbenv
brew install rbenv
brew install fastlane
# rbenv install 2.7.3
# gem install bundler

# turn on install from anywhere
# sudo spctl --master-disable
