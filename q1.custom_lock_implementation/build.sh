#!/bin/bash
#custom build script 
#cmake build output will be in build directory

RED='\033[0;31m'
NC='\033[0m'

echo -e "Menu options: \n 1. build \n 2. Run \n 3. Build and run\n"
read input

if [[ $input -eq 1 || $input -eq 3 ]]; then
  if [ -d "build" ]; then
     echo -e "${RED}Build directory already exist!${NC} Do you wish to rebuild?[y/n]"
     read b_input     
       if [[ "$b_input" == "y" || "$b_input" == "Y" ]]; then 
	 #remove existing build dir
	 rm -rd build/
	 echo "deleted existing build directory" 
       else
	exit;
       fi 
  fi
	 #create a build directory and cmake and make
	 echo -e "\n${RED} ----building---- ${NC}\n"
	 mkdir build && cd $_ && cmake ../ && make  
	 echo -e "\n${RED} ----done building---- ${NC}\n"

         #break to run the program if it is build n run
    	 if [[ $input -eq 3 ]]; then 
	  : 
	 #if input is n or N
	 else 
     	   exit;
	 fi
fi


if [[ $input -eq 2 || $input -eq 3 ]]; then

  #check if current directory is build and go back if true
  if [[ ${PWD##*/} == build ]]; then
    cd ..
  fi
    
  echo -e "${RED}\n ----Running ${PWD##*/}---- \n${NC}"
  build/${PWD##*/}

fi




