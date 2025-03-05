#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
function setgov () {
	echo $1 | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
}
if command -v wal > /dev/null 2>&1 && [ "$TERM" = "alacritty" ]; then
    wal -Rqne
fi
