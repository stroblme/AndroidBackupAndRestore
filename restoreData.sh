cd "./data"

for APP in $(ls *.backup)
do

    read -p "Do you want to copy data of $APP? " -n 1 -r
    echo    # (optional) move to a new line
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "Installing application..."
        adb restore $APP
        

    fi
done