#!/bin/bash

echo "first argument $1"

echo "second argument $2"

#if we run these,$1 and $2 will show nothing 
#and will be empty

#so to run this,we need to specify arguments in command line
#./arg.sh test
#here test denotes the 1st argument

#./arg,sh test woo , here 1st is test and 2nd argument is woo

#when is it used,when we have to create a folder or do something argument based

#to print all arguments,
#we do $@ in echo statement

echo "all args $@" 
#it will print any no. of argument even which are taken in the command line but not specified in the shell script

