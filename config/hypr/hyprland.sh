#!/usr/bin/env bash

# Current rice
read -r RICETHEME <"${HOME}"/.config/hypr/.rice

# Set environment variables
export PATH="$HOME/.config/hypr/src:$PATH"
## Fix java applications
export _JAVA_AWT_WM_NONREPARENTING=1

#  ╔═╗╦ ╦╔╦╗╔═╗╔═╗╔╦╗╔═╗╦═╗╔╦╗
#  ╠═╣║ ║ ║ ║ ║╚═╗ ║ ╠═╣╠╦╝ ║
#  ╩ ╩╚═╝ ╩ ╚═╝╚═╝ ╩ ╩ ╩╩╚═ ╩

# Set system vars for polybar
"$HOME"/.config/hypr/src/SetSysVars

# Load current theme
"${HOME}"/.config/bspwm/rices/"${RICETHEME}"/Theme.sh

# Launch picom
pidof -q picom || { picom --config "${HOME}"/.config/bspwm/src/config/picom.conf & }

# Launch xsettingsd
pidof -q xsettings || { xsettingsd --config="${HOME}"/.config/bspwm/src/config/xsettingsd >/dev/null 2>&1 & }

# Launch eww daemon
pidof -q eww || { eww -c "${HOME}"/.config/bspwm/eww daemon & }

# Launch clipboard daemon
pidof -q greenclip || { greenclip daemon & }

# Launch polkit
pidof -q polkit-gnome-authentication-agent-1 || { /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & }

# Start one time code
sh -c 'alacritty --hold -e cat $HOME/.config/bspwm/src/config/FirstMessage.txt && sed -i "/# Start one time code/,/# End one time code/d" ~/.config/bspwm/bspwmrc'
# End one time code
