#!/bin/bash
edit() {
# Which file?

   case $1 in
      -h|--help) # If help is asked, print usage and exit
         echo -e  "Usage: \nedit (zshrc | vimrc | gitfile | starter)" 
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
         echo -e  "Usage: \nedit (zshrc | vimrc | gitfile | starter)" 
         exit 1
         ;;
   esac
}

goto() {
# Which file?

   case $1 in
      -h|--help) # If help is asked, print usage and exit
         exit 0
         ;;
      desktop) # Check for a flag option   
         cd ~/Desktop
         exit 0
         ;;
      sdk-ota) # Check for a flag option   
         cd ~/sdk-ota
         exit 0
         ;;
      bin) # Check for a flag option   
         cd ~/bin
         exit 0
         ;;
      *) # Check for a flag option   
         echo -e  "Usage: \nedit (zshrc | vimrc | gitfile | starter)" 
         exit 1
         ;;
   esac
}
