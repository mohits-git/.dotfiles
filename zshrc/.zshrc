# Oh My Zsh - bloat
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)
source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set up vim key binding for terminal
set -o vi
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
export FZF_DEFAULT_OPTS="--extended"
export FZF_DEFAULT_COMMAND='fd -H -E .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
bindkey '^F' fzf-file-widget

# tmuxifier
# set path
PATH="$HOME/.tmuxifier/bin:$PATH"
# setup
eval "$(tmuxifier init -)"
export EDITOR=nvim

# Android Dev
# JDK | # Zulu 17 | # for android studio
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
# Android SDK
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

## Custom Aliases
# git aliases
alias gl="git log"
alias gcm="git commit -m"
alias sql="litecli"
alias gll="git log --oneline --decorate --graph"
alias gs="git switch"
# Python aliases
alias python="python3"
alias pip="pip3"
# Python venv alias
alias venv="python3 -m venv"
alias activate="source venv/bin/activate"
# stupid alias
alias n="nvim ."
alias v="nvim"
# tmuxifier
alias tls="tmux ls"
alias ta='tmux attach'
alias tk="tmux kill-session -t"
alias tf='tmuxifier'
alias tfls='tmuxifier load-session'

# tmux
bindkey '^ ' autosuggest-accept

# Postgres
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mohitkhatri/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mohitkhatri/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mohitkhatri/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mohitkhatri/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
