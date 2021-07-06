cd "./data"

for APP in $(adb shell pm list packages -3)
do
  echo "Backing up data of ${APP}"
  APP=$( echo ${APP} | sed "s/^package://")
  adb backup -f ${APP}.backup ${APP}
done

cd ..