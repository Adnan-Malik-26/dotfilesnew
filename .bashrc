#
#  ____    _    ____  _   _ ____   ____   ______   __
# | __ )  / \  / ___|| | | |  _ \ / ___| | __ ) \ / /
# |  _ \ / _ \ \___ \| |_| | |_) | |     |  _ \\ V /
# | |_) / ___ \ ___) |  _  |  _ <| |___  | |_) || |
# |____/_/   \_\____/|_| |_|_| \_\\____| |____/ |_|
#
    # _    ____  _   _    _    _   _
   # / \  |  _ \| \ | |  / \  | \ | |
  # / _ \ | | | |  \| | / _ \ |  \| |
 # / ___ \| |_| | |\  |/ ___ \| |\  |
# /_/   \_\____/|_| \_/_/   \_\_| \_|


[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export LANG=en_IN.UTF-8
export LC_CTYPE=en_IN.UTF-8
export HISTCONTROL=ignoreboth


#ALIASES
#Neovim Alias
alias 'vi'='nvim'
alias 'vim'='nvim'
alias 'nv'='nvim'
alias 'v'='nvim'

#Quitting Terminal
alias ':q'="exit"
alias ':qw'='exit'
alias ':wq'='exit'

#Bashrc 
alias 's'='source ~/.bashrc'
alias 'b'='nvim ~/.bashrc'

#Alternatives
alias df='duf'
alias 'cat'='bat'
alias 'ping'='gping -c blue'

#Opening Configs
alias 'i3c'='nvim ~/.config/i3/config '
alias 'plc'='nvim ~/.config/polybar/config.ini'
alias 'nfc'='nvim ~/.config/neofetch/config.conf'
alias 'alc'='nvim ~/.config/alacritty/alacritty.yml'
alias 'ts'='tmux source ~/.config/tmux/tmux.conf'
alias 'tmc'='nvim ~/.config/tmux/tmux.conf'

#Neofetch Alias
alias 'n'='neofetch'

#List Aliases
alias 'ls'='lsd --group-dirs first '
alias 'la'='lsd -a --group-dirs first '
alias 'll'='lsd -al --group-dirs first '
alias 'l'='lsd --group-dirs first -a '

#Adding Flags
alias df='df -h'
alias free='free -m'

#Adding Verbose
alias 'cp'='cp -v'
alias 'rm'='rm -v'
alias 'mv'='mv -v'
alias 'cl'='cd ~ && clear&&neofetch&&ls'
alias 'cv'='clear&&neofetch&&ls'
alias 'cls'='clear'

#IP address 
alias 'giveip'="ip -4 addr | grep -oP '(?<=inet\s)\d+(\.\d+){3}'"

#Meat of the file
alias meat='grep "^\s*[^#;]"'

#Ping short
alias 'pn'='ping -c 5 8.8.8.8'

#Git
alias add='git add .'
alias branch='git branch'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias push='git push'
alias psuh='git push'
alias stat='git status'
alias tag='git tag'
alias newtag='git tag -a'

#Tmux Aliases
alias 'tn'='tmux new -s (pwd | sed 's/.*\///g')'

#Update and Upgrade aliases 
alias 'upd'='sudo apt update'
alias 'upg'='sudo apt upgrade'
alias 'up'='sudo apt update && sudo apt upgrade'
alias 'rem'='sudo apt autoremove'

#Shopt
shopt -s autocd
shopt -s cdspell

#AUTOSTART
cl

###PATH
export PATH=$PATH:$HOME/.local/bin/
export PATH=$PATH:/usr/bin
export PATH=$PATH:$HOME/.spicetify
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.local/share/bob/nvim-bin
export PATH=$PATH:$HOME/.local/share/bob/nightly/nvim-linux64/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$HOME/scripts/
export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
###FUNCTIONS

#Extracting Files
ex () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1     ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *.tar.xz)    tar -xf $1     ;; 
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

#cd function
function cm {
    local counter=${1:-1}
    local dirup="../"
    local out=""
    while (( counter > 0 )); do
        let counter--
        out="${out}$dirup"
    done
    z $out
}

#mkcd
mkcd() {
    if [ $# -eq 0 ]; then
        echo "Usage: mkcd <directory_name>"
    else
        mkdir -p "$1" && cd "$1"
        echo "Created Directory $1"
    fi
}
#fstr
fstr(){
    grep -Rnw "." -e "$1"
}


###eval
eval "$(starship init bash)"
. "$HOME/.cargo/env"
eval "$(zoxide init --cmd cd bash)"
export PATH=$PATH:/home/adnanmalik/.spicetify
