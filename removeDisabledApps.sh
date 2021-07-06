for APP in $(adb shell pm list packages -d)
do
  APP=$( echo ${APP} | sed "s/^package://")
  adb shell pm uninstall --user 0 ${APP}
done