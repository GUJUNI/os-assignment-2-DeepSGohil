read -p "Enter file name : " fileName

if [ -f $fileName ]
then
        cat $fileName
else
        echo "File does not exist"
fi

