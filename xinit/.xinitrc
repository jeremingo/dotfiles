{ echo "XIDeviceEnabled XISlaveKeyboard"; inputplug -d -c /bin/echo; } |
while read event
do
  case $event in
  XIDeviceEnabled*XISlaveKeyboard*)
    setxkbmap -layout us -variant dvorak
    ;;
  esac
done &

dwmblocks &

~/.fehbg &

exec dwm
