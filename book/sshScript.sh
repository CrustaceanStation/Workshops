#!/bin/bash
read -p "Which server would you like to connect to " serverAddy
read -p "Which username would you like to use " userName

ssh ${userName}@$serverAddy
exit 0 

