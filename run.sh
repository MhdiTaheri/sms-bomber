#!/bin/bash

# Update and install necessary packages
sudo apt update
sudo apt install git python3-pip -y

# Clone the repository
git clone https://github.com/MhdiTaheri/sms-bomber.git
clear

# Print ASCII art in green color
GREEN='\033[0;32m'
NC='\033[0m' # No Color
echo -e "${GREEN}"
echo "
  __  __  _          _  _   _______      _                  _ 
 |  \/  || |        | |(_) |__   __|    | |                (_)
 | \  / || |__    __| | _     | |  __ _ | |__    ___  _ __  _ 
 | |\/| || '_ \  / _` || |    | | / _` || '_ \  / _ \| '__|| |
 | |  | || | | || (_| || |    | || (_| || | | ||  __/| |   | |
 |_|  |_||_| |_| \__,_||_|    |_| \__,_||_| |_| \___||_|   |_|
                                                              
                                                              
"
echo -e "${NC}"

# Run the Python script
(cd sms-bomber && python3 main.py)
