#!/bin/bash

##############################
#AUTHOR:YASHI
#DATE: 21-07-2024
#This script output node health
#version:v1

####scripting good practices
#1. use debug mode for debugging
#2. use echo statements for better understanding
#3. always write metadata info inside script like authon, date version , etc

set -x #debug mode
set -e # exit on error
set -o pipefail # to exit on pipefail

#one command for above 3 commands...but good practice is to implement them seperately,
#so that one can be removed when not needed
set -exo pipefail
# echo "Print the disk space"
df -h
# echo "Print the memory"
free -g
# echo " Print the CPU"
nproc