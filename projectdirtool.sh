#!/bin/bash
# scrpt for automaticaly creating a project directory

cd ~/Documents

echo "Project name:"
read projectname

mkdir $projectname
echo "creating $projectname dir"

cd $projectname

echo "would you like to create any subdirectories? (y/n)"
read answer

if [ $answer -eq "y" ]
then
    echo "how many subdirectories?"
    read num
    for i in $(seq 1 $num)
    mkdir sub$1

# integrate git into this as well



