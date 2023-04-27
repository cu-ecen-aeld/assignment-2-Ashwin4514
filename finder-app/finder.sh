#!/bin/bash

 if [ $# -ne 2 ]; then
	 echo "Usage: $0 filesdir searchstr"
	 exit 1
 fi


 if [ ! -d "$1" ]; then
	 echo "$1 is not a directory"
	 exit 1
 fi

 numOfMatchingFiles=$(find "$1" -type f | wc -l)
 numOfMatchingLines=$(grep -r "$2" "$1" | wc -l)

 echo "The number of files are $numOfMatchingFiles and the number of matching lines are $numOfMatchingLines."
