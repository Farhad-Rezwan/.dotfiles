export ZSH="/Users/rezwan/.oh-my-zsh"
ZSH_THEME="spaceship"
plugins=(git)

source $ZSH/oh-my-zsh.sh


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
# #Personal aliases
alias kanban="taskell"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias nivm="nvim"
alias vnim="nvim"


# Color and prompt
PATH=$PATH:$(ruby -e 'puts Gem.bindir')

SPACESHIP_DIR_SHOW="false"
SPACESHIP_CHAR_SYMBOL="\uf408  "
SPACESHIP_CHAR_COLOR_SUCCESS="blue"
SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
SPACESHIP_USER_SHOW="false"
SPACESHIP_VI_MODE_SHOW="false"

# Color and ls colors
alias ls=colorls — light — sort-dirs — report
alias lc=colorls — tree — light

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.


# vi mode
bindkey -v
export KEYTIMEOUT=1
SPACESHIP_PROMPT_PREFIXES_SHOW="false"

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'
bindkey -s '^k' 'open -a "Finder" .\n'

# TO open cv and coverletter

bindkey -s '^s' 'open -n -a "/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome" --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security' 
bindkey -s '^x' 'tmux list-sessions | awk '\''BEGIN{FS=":"}{print $1}'\'' | xargs -n 1 tmux kill-session -t'



# Layer 2
# exports zksync libraries
# export PATH=/Users/rezwan/Desktop/CivicLedger/learning/testingLayer2/zinc-0.2.3-macos/znc
# export PATH=/Users/rezwan/Desktop/CivicLedger/learning/testingLayer2/zinc-0.2.3-macos/zvm
# export PATH=/Users/rezwan/Desktop/CivicLedger/learning/testingLayer2/zinc-0.2.3-macos/zargo







# Python and PYENV
eval "$(pyenv init --path)"

# Java Version - 8
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
export PATH=/Users/rezwan/.daml/bin:/usr/local/opt/openjdk@8/bin:/Users/rezwan/.pyenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
fpath=(~/.daml/zsh /Users/rezwan/.oh-my-zsh/plugins/git /Users/rezwan/.oh-my-zsh/functions /Users/rezwan/.oh-my-zsh/completions /usr/local/share/zsh/site-functions /usr/share/zsh/site-functions /usr/share/zsh/5.8/functions)


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
