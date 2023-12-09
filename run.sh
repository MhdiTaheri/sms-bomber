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
echo "  __  _____        ___ ______      __              _ 
   /  |/  / /_  ____/ (_)_  __/___ _/ /_  ___  _____(_)
  / /|_/ / __ \/ __  / / / / / __ `/ __ \/ _ \/ ___/ / 
 / /  / / / / / /_/ / / / / / /_/ / / / /  __/ /  / /  
/_/  /_/_/ /_/\__,_/_/ /_/  \__,_/_/ /_/\___/_/  /_/   
"
echo -e "${NC}"

# Run the Python script
(cd sms-bomber && python3 main.py)
