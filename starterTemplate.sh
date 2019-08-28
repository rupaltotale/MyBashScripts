#!/bin/bash

usage() {
   echo "Usage: " #TODO: Complete this out
}

# Parse flags
add="."
message="'placeholder commit message'"
pushTo="origin"
PARAMS=""

while [ "$1" != "" ]; do
   case $1 in
      -h|--help) # If help is asked, print usage and exit
         usage
         exit 0
         ;;
      -m|--message) # Check for a flag option   
         message=$2 # Action to take if flag is present
         shift 2
         ;;
      -a|--add)  # Check for another flag option
         add=$2 # Action to take if this flag is present
         shift 2
         ;;
      -p|--push)  # Check for another flag option
         pushTo=$2 # Action to take if this flag is present
         shift 2
         ;;
      *) # All other paramenter
         PARAMS="$PARAMS $1" # Store other arguments
         shift
         ;;
   esac
done
# Main code below
