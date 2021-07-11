export TERM=xterm-256color
export PATH="$PATH:/Users/noname/.npm/bin:$PATH"
export PATH="$PATH:/Users/becalm/flutter/bin:$PATH" # Setting PATH for Python 3.9 The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.frameworkbash_history/Versions/3.9/bin:${PATH}"
export PATH="/Users/flutter/bin":$PATH
export PATH="$PATH":"$HOME/.pub-cache/bin" # add path for dart packages

export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
export ANDROID_SDK=/usr/local/share/android-sdk
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH

# bash-completion config
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# editor
export VISUAL=vim
export PATH="$PATH:$HOME/.vim/plugged/vim-superman/bin"
# add completion
complete -o default -o nospace -F _man vman

export EDITOR="$VISUAL"
export BROWSER="lynx"
set -o vi

# alias
alias c="clear"
alias v="vim ."
alias y="ytfzf"
alias man="vman"


# list alias
alias ll="ls -la"

# history
export HISTFILESIZE=
export HISTSIZE=
export HISTFILE=~/.history # back up history, copy this history file into home, rename to "bash_history" > "history -rw" to apply

export HISTTIMEFORMAT="[%F %T] "
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
export HISTCONTROL=ignoredups
export PS1='> '

#prefer rg over ag
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files  --hidden ~/TODO.md'
fi

export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border'


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export BASH_SILENCE_DEPRECATION_WARNING=1

# Google cloud
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vanducnguyen/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/vanducnguyen/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vanducnguyen/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/vanducnguyen/Downloads/google-cloud-sdk/completion.bash.inc'; fi
