export PATH="$PATH:/Users/noname/.npm/bin:$PATH"
export PATH="$PATH:/Users/noname/flutter/bin:$PATH" # Setting PATH for Python 3.9 The original version is saved in .bash_profile.pysave
export PATH="$PATH:/Users/vanducnguyen/Downloads/flutter/bin:$PATH" # Setting PATH for Python 3.9 The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"

# editor
export VISUAL=vim 
export EDITOR="$VISUAL"
set -o vi

# alias
alias cl="clear"
alias v="vim ."

# history
export HISTFILESIZE=
export HISTSIZE=
export HISTFILE=~/.history

export HISTTIMEFORMAT="[%F %T] "
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
export HISTCONTROL=ignoredups
export PS1='> '
if type ag &> /dev/null; then
    export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore ~/.env -g ""'
fi

#refer rg over ag
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden ~/TODO.md'
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export BASH_SILENCE_DEPRECATION_WARNING=1

# Google cloud
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vanducnguyen/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/vanducnguyen/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vanducnguyen/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/vanducnguyen/Downloads/google-cloud-sdk/completion.bash.inc'; fi
