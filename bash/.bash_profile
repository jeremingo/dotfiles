#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export SUDO_ASKPASS="$HOME/.local/bin/dmenu-scripts/dpass"

if [ -z "$DISPLAY" ] &&  [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi
