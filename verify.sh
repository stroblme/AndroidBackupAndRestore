echo "Num of apks"
cd "./apk"
ls -1q *.apk | wc -l
cd ..

echo "Num of data files"
cd "./data"
ls -1q *.backup | wc -l
