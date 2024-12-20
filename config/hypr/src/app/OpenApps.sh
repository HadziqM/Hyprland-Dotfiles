#!/usr/bin/env bash
#   █████╗ ██████╗ ██████╗ ███████╗    ██╗      █████╗ ██╗   ██╗███╗   ██╗ ██████╗██╗  ██╗███████╗██████╗
#  ██╔══██╗██╔══██╗██╔══██╗██╔════╝    ██║     ██╔══██╗██║   ██║████╗  ██║██╔════╝██║  ██║██╔════╝██╔══██╗
#  ███████║██████╔╝██████╔╝███████╗    ██║     ███████║██║   ██║██╔██╗ ██║██║     ███████║█████╗  ██████╔╝
#  ██╔══██║██╔═══╝ ██╔═══╝ ╚════██║    ██║     ██╔══██║██║   ██║██║╚██╗██║██║     ██╔══██║██╔══╝  ██╔══██╗
#  ██║  ██║██║     ██║     ███████║    ███████╗██║  ██║╚██████╔╝██║ ╚████║╚██████╗██║  ██║███████╗██║  ██║
#  ╚═╝  ╚═╝╚═╝     ╚═╝     ╚══════╝    ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
#	Script to control prefered apps to launch for all themes
#	Author: z0mbi3
#	url:    https://github.com/gh0stzk/dotfiles

# TODO: add eww widgets
WIDGET_DIR="$HOME/.config/hypr/eww"

case "$1" in
--menu)
  # TODO: add launcher themes
  rofi -show drun -theme "$HOME"/.config/hyper/src/rofi-themes/Launcher.rasi
  ;;
--rice)
  RiceSelector
  ;;
--terminal)
  Term --terminal
  ;;
--floating)
  Term --floating
  ;;
--update)
  Term --update
  ;;
--checkupdates)
  Term --checkupdates
  ;;
--netmanager)
  NetManagerDM
  ;;
--bluetooth)
  rofi-bluetooth
  ;;
--clipboard)
  rofi -modi "clipboard:greenclip print" -theme "$HOME"/.config/bspwm/src/rofi-themes/Clipboard.rasi -show clipboard -run-command '{cmd}'
  ;;
--screenshot)
  ScreenShoTer
  ;;
--powermenu)
  PowerMenu
  ;;
--android)
  AndroidMount
  ;;
--keyboard)
  KeyBoardL
  ;;
--yazi)
  Term --yazi
  ;;
--nvim)
  Term --nvim
  ;;
--music)
  Term --music
  ;;
--fetch)
  Term --fetch
  ;;
  # Apps
--filemanager)
  thunar
  ;;
--browser)
  firefox
  ;;
--editor)
  geany
  ;;
--telegram)
  telegram-desktop
  ;;
--whats)
  firefox -new-tab https://web.whatsapp.com/
  ;;
--soundcontrol)
  pavucontrol
  ;;
  # Eww Widgets
--KeyHelp)
  eww -c "$WIDGET_DIR" open --toggle csheet
  ;;
--usercard)
  eww -c "$WIDGET_DIR" open --toggle launchermenu
  ;;
--player)
  eww -c "$WIDGET_DIR" open --toggle music
  ;;
--calendar)
  eww -c "$WIDGET_DIR" open --toggle date
  ;;
*)
  echo "Invalid Option"
  ;;
esac