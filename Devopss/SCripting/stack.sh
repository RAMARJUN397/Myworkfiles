#!/bin/bash

echo "List Of The Files"
list=$(ls -l)
echo "$list"
echo "Updating The System"
apt=$(apt-get update)
echo "$apt"