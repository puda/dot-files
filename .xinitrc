#caps to esc
# hidpi
xrandr --dpi 192
# caps to esc
xmodmap -e "clear lock" #disable caps lock switch
xmodmap -e "keysym Caps_Lock = Escape" #set caps_lock as escape
# volume control (doesn't usually work, use pavucontrol)
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume 0 -- +10% && killall -SIGUSR1 i3status
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume 0 -- -10% && killall -SIGUSR1 i3status

exec emacs
# Disable access control
xhost +SI:localuser:$USER

# Themes, etc
gnome-settings-daemon &

# Fallback cursor
xsetroot -cursor_name left_ptr

# Keyboard repeat rate
xset r rate 200 60

# Start Emacs
exec dbus-launch --exit-with-session emacs
