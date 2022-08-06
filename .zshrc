export ZSH="/Users/rezwan/.oh-my-zsh"
ZSH_THEME="spaceship"
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias v="nvim -u ~/.config/nvim/init.lua"
alias vi="nvim -u ~/.config/nvim/init.lua"
alias vim="nvim -u ~/.config/nvim/init.lua"
alias nivm="nvim -u ~/.config/nvim/init.lua"
alias nvim="nvim -u ~/.config/nvim/init.lua"
alias vnim="nvim -u ~/.config/nvim/init.lua"

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

# TO open google sequre mode, close tumxes, run adonis, cv and coverletter
bindkey -s '^s' 'open -n -a "/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome" --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security' 
bindkey -s '^x' 'tmux list-sessions | awk '\''BEGIN{FS=":"}{print $1}'\'' | xargs -n 1 tmux kill-session -t'
bindkey -s '^r' 'nvm use 16 && SSL_MODE=local npm run dev'
bindkey -s '^w' 'cd /Users/rezwan/Projects.nosync/civicLedger/waterLedger'
bindkey -s '^a' 'cd /Users/rezwan/Projects.nosync/civicLedger/auditor'
bindkey -s '^n' 'cd /Users/rezwan/.config/nvim'
bindkey -s '^p' 'pwd | pbcopy'
bindkey -s '^u' 'cd /Users/rezwan/Projects.nosync/Personal'
bindkey -s '^q' 'cat /Users/rezwan/.ssh/password.txt | pbcopy \nsudo shutdown -h now\n'
bindkey -s '^e' 'nvm use 16 && node ace migration:rollback && node ace migration:run && node ace db:seed -i'
bindkey -s '^t' 'docker-compose stop && docker-compose down && docker-compose build && docker-compose up'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export LDFLAGS="-L $(xcrun --show-sdk-path)/usr/lib -L brew --prefix bzip2/lib"
export CFLAGS="-L $(xcrun --show-sdk-path)/usr/include -L brew --prefix bzip2/include"

# Python and PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

alias luamake=/Users/rezwan/.config/nvim/lua-language-server/3rd/luamake/luamake
export JAVA_HOME="$(/usr/libexec/java_home)"
export PATH="$HOME/.daml/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
