cd "./apk"

for APP in $(adb shell pm list packages -3 -f)
do
  echo "Backing up apk of ${APP}"
  adb pull $( echo ${APP} | sed "s/^package://" | sed "s/base.apk=/base.apk /").apk
done

cd ..