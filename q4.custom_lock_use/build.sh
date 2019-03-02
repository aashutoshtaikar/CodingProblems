#!/bin/bash

if [ -d "build" ]; then
   echo "Build directory already exist! Do you wish to rebuild?"
     select yn in "Yes" "No"; do
       case $yn in
         Yes ) rm -rd build/; echo "deleted existing build directory"; break;;
         No ) exit;;
     esac
   done
fi

echo "building...."
#create a build directory and cmake and make
mkdir build && cd $_ && cmake ../ && make


