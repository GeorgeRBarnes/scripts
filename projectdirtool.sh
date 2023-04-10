#!/bin/bash
# scrpt for automaticaly creating a project directory

cd ~/Documents

echo "Project name:"
read projectname

echo "creating $projectname dir"
mkdir $projectname

cd $projectname

echo "would you like to create any subdirectories? (y/n)"
read answer

if [ $answer = "y" ]
then
    echo "how many subdirectories?"
    read numberoffolders
    
    defaultfoldernumber=1
    while [ $defaultfoldernumber -le $numberoffolders ]
    do
        echo "creating folder $defaultfoldernumber"
        echo "What name would you like to give folder $defaultfoldernumber?"
        read foldername
        mkdir $foldername
        ((defaultfoldernumber++)) 
    done
    else
        echo "no subdirectories created"
fi

echo "opening your project folder"
cd ~/Documents/$projectname/