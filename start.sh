#!/bin/bash
clear
echo "---------------------------------------- Trend Micro Vision One - API Tools ----------------------------------------";
echo ' ';
echo ' Please, provide the Vision One API Key: ';
read tokenid
echo ' ';
sleep 5
clear

# Menu Options
echo "---------------------------------------- Trend Micro Vision One - API Tools ----------------------------------------";
echo ' ';
echo ' Your API Key: $tokenid';
echo ' ';
echo "--------------------------------------------------------------------------------------------------------------------";
echo "1. Isolate an Endpoint based on GUI"
echo "2. Isolate an Endpoint based on Hostname"
echo "3. Restore the connection of an Isolated Endpoint"
echo "4. Check the Response Status"
echo "5. Exit from menu "
echo "--------------------------------------------------------------------------------------------------------------------";
echo -n "Enter your menu choice [1-5]: "

# Preparing the Application 
while :
do

# Reading Choice
read choice

# Executing the Application 
case $choice in
  # Option 1
  1)  echo "You have selected the option 1"
    clear
    echo '--------------------------'
    cd scripts/
    python3 v1_isolate-endpoint.py
    read -p "Press any key to continue.."
    sleep 3
    echo "";;
  # Option 2
  2)  echo "You have selected the option 2"
    clear
    echo '---------------------------'
    cd scripts/
    python3 v1_isolate-endpoint-name.py
    read -p "Press any key to continue.."
    sleep 3
    clear
    echo "";;
    # Option 3
  3)  echo "You have selected the option 3"
    clear
    echo '-----------------------------------'
    cd scripts/
    python3 v1-getResponseStatus.py
    read -p "Press any key to continue.."
    sleep 3
    echo "";;
  # Option 4
  4)  echo "You have selected the option 4"
    clear
    echo '-----------------------------------'
    cd scripts/
    python3 v1-restore-endpoint-connection.py
    read -p "Press any key to continue.."
    sleep 3
    echo "";;
  5)  echo "Quitting ..."
    echo ' '
      exit;;
  
  # Default Pattern
  *) echo "invalid option";;
  
esac
  echo -n "Enter your menu choice [1-5]: "
done
