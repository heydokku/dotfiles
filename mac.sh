#gmac:
#gdon't update mac bigsur, when update it's will not compatible with the USB device, disable the network when use USB
# 1. Basics
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install git-extras gh so glab sonic basictex # schema-less search backend. An alternative to Elasticsearch that runs on a few MBs of RAM.

# VIM
git clone https://github.com/vim/vim.git && cd vim
./configure --prefix=/opt/local --with-features=huge --enable-pythoninterp --enable-python3interp
make && sudo make install

brew install --cask macvim

curl -fsSL https://raw.github.com/cknadler/vim-anywhere/master/install | bash
brew install node go httpie git
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# install GO packages

# OR download amd364 https://github.com/justincampbell/tmux-pomodoro/releases/tag/v1.2.1

# rename tmux-pomodoro to pomodoro

npm -g install instant-markdown-d eslint js-beautify stylelint typescript-formatter remark-cli fixjson
npm install -g firebase-tools macos-key-cast
# copy .git_ignore
git clone https://github.com/heydokku/dotfiles
git config --global core.excludesfile ~/.gitignore_global
# Copy multiple files to one directory
cp ~/dotfiles/.gitignore ~
cp ~/dotfiles/.tmux.conf ~
cp ~/dotfiles/.bash_profile ~
echo '0000' | sudo pip install --upgrade google-api-python-client oauth2client progressbar2

# .net for C#
# brew install --cask dotnet-sdk

# SHELL
brew install shellcheck
# Change shell from zsh to bash
# check which scripting languages are supported in the system.
cat /etc/shells
# change zsh to bash
chsh -s /bin/bash
# file Manager
brew install tree
# search
brew install ripgrep fd       # fd also search file, like fzf, fd will print to the screen
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Download android sdk from  https://developer.android.com/studio/#downloads. Don't use brew to install, will get error
# brew install java # will install latest java (11)
# installed by HomeBrew, automatically added to usr/local/bin
brew install bundletool java8 android-sdk android-ndk  android-platform-tools
brew tap adoptopenjdk/openjdk
brew install adoptopenjdk8
#  android development
touch ~/.android/repositories.cfg
yes | sdkmanager --licenses
# "android" command is depreceated, use sdkmanager
sdkmanager --no_https --install 'system-images;android-30;google_apis;x86' 'emulator'
sdkmanager --no_https --install 'extras;intel;Hardware_Accelerated_Execution_Manager'
sdkmanager --no_https --install 'platforms;android-30' 'build-tools;30.0.2'
sdkmanager --list

# Google Cloud
brew install google-cloud-sdk
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"

# brew cask install adoptopenjdk13
# create new virtual devices
#download the android emulator package, not with specific devices
# Create a new virtual device
# Xcode-related
brew install robotsandpencils/made/xcodes # install specific version of xcodes, like rbenv
brew install xcodegen
brew install sourcekitten # need to install xcode
brew install swiftlint gradle
brew install clang-format
# Font firacode
brew tap homebrew/cask-fonts
# hack nerd font nhin thanh manh
# fira code nhin no cu bi be ra

# Youtube
brew install --cask font-hack-nerd-font
brew install youtube-dl
git clone https://github.com/pystardust/ytfzf
cd ytfzf
sudo make install

# Tmux
brew install tmux tmuxinator tmate  # tmate is a terminal sharing app
# tmuxinator's config files is located at ~/.config/tmuxinator/
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Tags
brew install ctags exuberantk-ctags

# Code styling
brew install bat gnu-sed

# TODO: https://github.com/Gcenx/WineskinServer to install mt5

# brew install --cask unity-hub
# Change the firefox download folder to ~/Developer folder
brew install alacritty firefox qutebrowser amethyst
# firefox
# /Applications/Firefox.app/Contents/MacOS/firefox-bin --version

# vim-plug
  sudo pip3 install --upgrade pip
  # echo 0000 | sudo -S <command>

  pip3 install black

# ruby
# install rbenv
brew install rbenv fastlane
gem install bundler
rbenv install 2.7.3

# mac clean-up
curl -o cleanup https://raw.githubusercontent.com/fwartner/homebrew-mac-cleanup/master/mac-cleanup
chmod +x cleanup
sudo mv cleanup /usr/local/bin/cleanup
# If installing with curl you need to call cleanup instead of mac-cleanup.
cleanup -n

# flutter
brew install flutter
dart pub global activate fvm
# flutter upgrade && flutter pub upgrade
