# ZSH Goodies
if [[ ! -d $HOME/.oh-my-zsh ]]; then
	echo "Installing oh-my-zsh"
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
plugins=(
  git
)
export BROWSER=firefox
export EDITOR=vim
source $ZSH/oh-my-zsh.sh

# User Configuration
ZSH_THEME="ys"
COMPLETION_WAITING_DOTS="true"
alias epoch="date +%s" # You'd be suprised
alias nvim="vim" # I'm forgetful
alias sl="ls" # Typos my dude
alias vpn="cd /etc/openvpn;sudo openvpn mullvad_us-ga.conf" # To-do: Make a script that allows me to choose from different servers
alias vpnon="wg-quick up mullvad-us4"
alias vpnoff="wg-quick down mullvad-us4"
plugins=(git)

export LESS_TERMCAP_mb=$'\e[01;31m' \
	LESS_TERMCAP_md=$'\e[01;31m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_so=$'\e[01;33m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	LESS_TERMCAP_us=$'\e[03;32m' 
