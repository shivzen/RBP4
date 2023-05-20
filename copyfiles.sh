
for files in *.txt
do
    filename=`echo $files | awk -F. '{print $1}'` ;
    echo $filename;
    echo $files;
    printf "\n";
    if [ -d $filename ]
    then
            rm -r $filename;
    fi
    mkdir $filename;
    cp $files $filename;
done
