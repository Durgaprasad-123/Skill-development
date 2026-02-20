#!/bin/bash
read filename
if [ -z "$filename" ];then echo "Please enter a Filename"
else
        if [ -e "$filename" ];then echo "file is exist && $(find . -name $filename )"
        else echo "$filename is not there";fi
fi
