#!/bin/sh

if [ -z $1 ] || [ -z $2 ]
then
  echo "Usage: writer.sh [File Path] [Contents]\n Missing required parameter"
  exit 1
fi

writefile=$1
writestr=$2

path=$(dirname $writefile)

mkdir -p $path
if [ $? -ne 0 ]
then
  echo "Can't create folder: $path"
  exit 1
fi

echo $writestr > $writefile
if [ $? -ne 0 ]
then
  echo "Can't create file: $writefile "
  exit 1
fi



