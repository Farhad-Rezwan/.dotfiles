export REACT_EDITOR=atom
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

SPACESHIP_DIR_SHOW="false"
SPACESHIP_CHAR_SYMBOL="\uf408  "
SPACESHIP_CHAR_COLOR_SUCCESS="blue"
SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
SPACESHIP_USER_SHOW="false"
SPACESHIP_VI_MODE_SHOW="false"

alias ls=colorls — light — sort-dirs — report
alias lc=colorls — tree — light

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# #Personal aliases
alias kanban="taskell"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias nivm="nvim"
alias vnim="nvim"

export PATH="/usr/local/opt/node@14/bin:$PATH"

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
bindkey -s '^x' 'pkill -f tmux'


# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

export NVM_DIR="/Users/rezwan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_281.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH



export ANDROID_SDK_ROOT=~/Library/Android/sdk
# Create a JAVA_HOME variable, determined dynamically
# Set Android_HOME
export ANDROID_HOME=~/Library/Android/sdk/
# Add the Android SDK to the ANDROID_HOME variable
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
#Set GRADLE_HOME
export GRADLE_HOME=/Library/gradle/gradle-3.2
export PATH=$PATH:$GRADLE_HOME/bin



export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
# export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"
export DYLD_LIBRARY_PATH="/usr/local/Cellar/openssl@1.1/1.1.1j/lib:$DYLD_LIBRARY_PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"


# For compilers to find openssl@1.1 you may need to set:
# export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
# export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"





# For pkg-config to find openssl@1.1 you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"
export PGDATA='/usr/local/var/postgres'


alias pg_start="launchctl load ~/Library/LaunchAgents"
alias pg_stop="launchctl unload ~/Library/LaunchAgents"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH=/Users/rezwan/.pyenv/versions/3.7.2/bin:$PATH
export PATH=/Users/rezwan/.pyenv/versions/3.7.2/bin:$PATH
export PATH=/Users/rezwan/.pyenv/versions/3.7.2/bin:$PATH

# exports zksync libraries
# export PATH=/Users/rezwan/Desktop/CivicLedger/learning/testingLayer2/zinc-0.2.3-macos/znc
# export PATH=/Users/rezwan/Desktop/CivicLedger/learning/testingLayer2/zinc-0.2.3-macos/zvm
# export PATH=/Users/rezwan/Desktop/CivicLedger/learning/testingLayer2/zinc-0.2.3-macos/zargo
