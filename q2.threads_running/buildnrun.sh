#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'

if [ -d "build" ]; then
   echo -e "${RED}Build directory already exist!${NC} Do you wish to rebuild?"
     select yn in "Yes" "No"; do
       case $yn in
         Yes ) rm -rd build/; echo "deleted existing build directory"; break;;
         No ) exit;;
     esac
   done
fi

echo -e "\n${RED} ----building---- ${NC}\n"
#create a build directory and cmake and make
mkdir build && cd $_ && cmake ../ && make  

echo -e "\n${RED} ----done building---- ${NC}\n"
#to AND with the above build line
# && ./$(cd ../ && build${PWD##*/})

#run

cd ..
echo -e "${RED}\n ----Running ${PWD##*/}---- \n${NC}"
build/${PWD##*/}


