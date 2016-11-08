# Path to your oh-my-zsh installation.
export ZSH=$HOME/.dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=10

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
# Add wisely, as too many plugins slow down shell startup.
plugins=(git extract pip docker)

# User configuration
export LANG=en_US.UTF-8 LC_CTYPE="en_US.UTF-8"
export TERM="xterm-256color"
export PATH=/Users/v/.dotfiles/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
export MANPATH="/usr/local/man:$MANPATH"


# https://github.com/andsens/homeshick/wiki/Installation
#source "$HOME/.homesick/repos/homeshick/homeshick.sh"
#fpath=($HOME/.homesick/repos/homeshick/completions $fpath)

source $ZSH/oh-my-zsh.sh

# 'rm *' sanity check
setopt RM_STAR_WAIT

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nano'
 else
   export EDITOR='nano'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# iTerm shell integration
test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# run pip globally
gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

################################################################################
################################################################################
#alias

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Lock the screen (when going AFK) Same as hammerspoon's hyper + S
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

alias h="history | grep $1"                     # Search through history
alias flushDNS="dscacheutil -flushcache  && killall -HUP mDNSResponder"        # Flush out the DNS Cache
alias thetime='date "+%H:%M %d-%m-%Y"'          # thetime:      19:49 06-01-2015
alias timestamp='date "+%Y%m%d%a%H%M"'          # timestamp:    20150106Ter1949
alias pyserv="open http://127.0.0.1:8080 & python3 -m http.server 8080" # pyserv:       serve files from current location
alias youtube-to-mp3='youtube-dl --extract-audio --audio-format mp3' # youtube-to-mp3:	download video and convert to mp3

#OSX
alias o="open"
alias hidefolder="chflags hidden"
alias unhidefolder="chflags nohidden"

#Disable desktop icons
#defaults write com.apple.finder CreateDesktop true
#killall Finder

#alias proxy='ssh -C2qTnN -D 8080'

#Start load a virtualenv named after the current directory
#alias v='workon "${PWD##*/}"'
alias cp='cp -i'

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}

#Mostrar pid e parametros
getpid() {ps -eo pid,args | grep $* }

#Expose chosen port on reverse proxy
servtunnel() { ssh -R 8080:localhost:$* stylophone; }

#loop infinito do comando X com pausa de Y segundos
loopcmd() {while true; do $*; sleep 2; printf "\n"; done}

#Compile with javac, run with interpreter, delete compiled.
vjava-compile-run-delete() {javac "$*"; java $(echo "$*"| cut -d '.' -f1);  rm $(echo "$*"| sed 's/\.java$/\.class/')}


# function anybar {echo -n $1 | nc -4u -w0 localhost ${2:-1738};}

# Make Docker use `dev` machine
# eval "$(docker-machine env dev)"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias cppcompile='c++ -std=c++11 -stdlib=libc++'

#
alias csi='csi -quiet'
