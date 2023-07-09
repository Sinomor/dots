#! /bin/sh

rofi_cmd() {
	rofi -dmenu \
		-theme ~/.config/bspwm/rofi/configs/power.rasi
}

chosen=$(printf "\n\n" | rofi_cmd)

case "$chosen" in
	"") loginctl poweroff ;;
	"") loginctl reboot ;;
	"") bspc quit ;;
	*) exit 1 ;;
esac
