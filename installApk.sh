cd "./apk"
for APP in $(ls *.apk)
do

    read -p "Do you want to install $APP? " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "Installing application..."
        adb install $APP
        

    fi
done
cd ..