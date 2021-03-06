# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="mytheme" #copy of 'robbyrussel' theme with personal tweaks

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
export PATH="$PATH:$HOME/bin"

# export MANPATH="/usr/local/man:$MANPATH"

## Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

[ -s "/root/.nvm/nvm.sh" ] && . "/root/.nvm/nvm.sh" # This loads nvm

# my env

EDITOR="vim"

# Alias
alias c='clear'
alias df='df -h'
alias du='du -h'
alias ls='ls -h'
alias ll='ls -l'
alias la='ls -la'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias ne='emacs -nw'
alias j='jobs'
alias z='zlock'

alias reload=". ${HOME}/.zshrc"

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias ip="curl -s http://checkip.dyndns.com/ | sed 's/[^0-9\.]//g'"
alias localip="ipconfig getifaddr en1"

alias tree="tree --dirsfirst"

alias q='logout'
alias :q='logout'

## Useful personal commands

clean()
{
    SEARCH='.'
    if [ ${1} ]
    then
        SEARCH=${1}
    fi
    find ${SEARCH} \( -name "*~" -or -name ".*~" \) -exec rm -fv {} \;
}

#

# mkdir: maximum nested function level reached
# md() { mkdir -p "$@" && cd "$@"; }

mcdir()
{
    if [ ${1} ]
    then
	mkdir ${1}
	cd ${1}
    fi
}

###

source $ZSH/oh-my-zsh.sh

## tmuxinator
# source $HOME/.bin/tmuxinator.zsh

## NVM
# source ~/.nvm/nvm.sh

## Linuxbrew
# export PATH="$HOME/.linuxbrew/bin:$PATH"
# export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
# export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
