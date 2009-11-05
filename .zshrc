# to use with ansi-term
[[ $TERM == eterm-color ]] && export TERM=xterm

# keychain
keychain -q ~/.ssh/id_rsa
source ~/.keychain/kytes-sh

# shell settings
autoload -U compinit promptinit
compinit
promptinit

# changing colors in ls --color
eval $(dircolors =(dircolors --print-database | awk '/DIR/ {$2="00;33"} {print}'))

# shell exports
export PS1="%{${fg[red]}%}[%{${fg[green]}%}%T%{${fg[red]}%}]%{${fg[white]}%}%25<...<%~%{${fg[white]}%}: "
export PS2="%_> "
export PATH=$PATH:/home/artagnon/bin:/home/artagnon/bin/depot_tools
export PYTHONPATH=/opt/python
export PYTHONSTARTUP=/home/artagnon/.pythonrc

# GPG key
export GPGKEY=B8BB3FE9

# proxy exports
export all_proxy=http://144.16.192.245:8080
export http_proxy=http://144.16.192.245:8080
export ftp_proxy=http://144.16.192.245:8080

# system aliases
alias ls='ls --color'
alias l='ls --color'
alias halt='sudo halt'
alias reboot='sudo reboot'
alias grep='ack-grep -i'
alias rmdup='find . -name "*\ \(1\)*" -exec rm {} \;'

# custom aliases
alias rsync='rsync -avz -e ssh'
alias pulseoff='mv ~/.asoundrc ~/.asoundrc.pulse'
alias pulseon='cp ~/.asoundrc.pulse ~/.asoundrc'
alias mutt='http_proxy= ftp_proxy= proxychains mutt'
alias ec='emacsclient'
alias et='emacsclient -t'

# apt aliases
alias au='sudo aptitude update'
alias aup='sudo aptitude safe-upgrade'
alias ai='sudo aptitude install'
alias as='aptitude search'
alias ashow='aptitude show'
alias arp='sudo aptitude purge'
alias dl='dpkg -l | grep'
alias dL='dpkg -L'

# pulseaudio aliases
alias pa='pulseaudio -D'

# bluetooth
export Artagnon="00:1D:98:3A:22:52"
export Peeyush="00:1B:EE:90:FB:14"
alias btallow="dbus-send --system --type=method_call --print-reply --dest=org.bluez /org/bluez/hci0 org.bluez.Adapter.SetMode string:discoverable && dbus-send --system --type=method_call --print-reply --dest=org.bluez /org/bluez/hci0 org.bluez.Adapter.SetDiscoverableTimeout uint32:200 > /dev/null"

# shell options
setopt NO_BEEP
setopt AUTO_CD
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# history options
HISTFILE=/home/artagnon/.zsh-history
HISTSIZE=3000
SAVEHIST=$HISTSIZE
