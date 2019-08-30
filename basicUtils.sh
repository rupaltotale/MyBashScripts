#!/bin/bash
edit() {
   usage() {
      echo -e  "Usage: \nedit (zshrc | vimrc | gitfile | starter)" 
   }

   # Which file?

   case $1 in
      -h|--help) # If help is asked, print usage and exit
         usage
         exit 0
         ;;
      zshrc) # Check for a flag option   
         vim ~/.zshrc
         exit 0
         ;;
      vimrc) # Check for a flag option   
         vim ~/.vimrc
         exit 0
         ;;
      gitfile) # Check for a flag option   
         vim ~/bin/GitFiles/help1.txt
         exit 0
         ;;
      starter) # Check for a flag option   
         vim ~/bin/starterTemplate.sh
         exit 0
         ;;
      *) # Check for a flag option   
         usage
         exit 1
         ;;
   esac
}
export BIN=~/bin/
export DESKTOP=~/Desktop/
export OTA=~/sdk-ota
