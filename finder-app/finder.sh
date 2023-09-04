#!/bin/sh

if [ -z $1 ] || [ -z $2 ]
then
  echo "Usage: finder.sh [File Directory] [Search String]\n Missing required parameter"
  exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d $filesdir ]
then
  echo "$1 is not a directory"
  exit 1
fi


files_count=$(find $filesdir -type f | wc -l)

match_count=$(grep -sr $searchstr $filesdir | wc -l)

echo "The number of files are $files_count and the number of matching lines are $match_count"
