#!/bin/bash

#Gets user input, asks the name of the dir they want to create
read -p "Enter the name of the directory you wish to create: " folder

#runs mkdir, creates the specified directory
mkdir $folder

