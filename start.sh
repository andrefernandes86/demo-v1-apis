#!/bin/bash
clear

# Menu Options
echo "---------------------------------------- Trend Micro Vision One - API Tools ----------------------------------------";
echo ' ';
echo "1. Isolate an Endpoint based on GUID"
echo "2. Isolate an Endpoint based on Hostname"
echo "3. Restore the connection of an Isolated Endpoint"
echo "4. Check the Response Status"
echo "5. Add an IOC to the SO list"
echo "6. Exit from menu "
echo ' ';
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
    cd scripts
    clear
    python3 v1_isolate-endpoint.py
    read -p "Press any key to continue.."
    sleep 5
    clear
    echo "---------------------------------------- Trend Micro Vision One - API Tools ----------------------------------------";
    echo ' ';
    echo "1. Isolate an Endpoint based on GUID"
    echo "2. Isolate an Endpoint based on Hostname"
    echo "3. Restore the connection of an Isolated Endpoint"
    echo "4. Check the Response Status"
    echo "5. Add an IOC to the SO list"
    echo "6. Exit from menu "
    echo ' ';
    echo "--------------------------------------------------------------------------------------------------------------------";
    echo "";;
  # Option 2
  2)  echo "You have selected the option 2"
    clear
    echo '---------------------------'
    cd scripts
    clear
    python3 v1_isolate-endpoint-name.py
    read -p "Press any key to continue.."
    sleep 5
    clear
    echo "---------------------------------------- Trend Micro Vision One - API Tools ----------------------------------------";
    echo ' ';
    echo "1. Isolate an Endpoint based on GUID"
    echo "2. Isolate an Endpoint based on Hostname"
    echo "3. Restore the connection of an Isolated Endpoint"
    echo "4. Check the Response Status"
    echo "5. Add an IOC to the SO list"
    echo "6. Exit from menu "
    echo ' ';
    echo "--------------------------------------------------------------------------------------------------------------------";
    echo "";;
  # Option 3
  3)  echo "You have selected the option 3"
    clear
    echo '-----------------------------------'
    cd scripts
    clear
    python3 v1-restore-endpoint-connection.py
    read -p "Press any key to continue.."
    sleep 5
    clear
    echo "---------------------------------------- Trend Micro Vision One - API Tools ----------------------------------------";
    echo ' ';
    echo "1. Isolate an Endpoint based on GUID"
    echo "2. Isolate an Endpoint based on Hostname"
    echo "3. Restore the connection of an Isolated Endpoint"
    echo "4. Check the Response Status"
    echo "5. Add an IOC to the SO list"
    echo "6. Exit from menu "
    echo ' ';
    echo "--------------------------------------------------------------------------------------------------------------------"; 
    echo "";;
  # Option 4
  4)  echo "You have selected the option 4"
    clear
    echo '-----------------------------------'
    cd scripts
    clear
    python3 v1-getResponseStatus.py
    read -p "Press any key to continue.."
    sleep 5
    clear
    echo "---------------------------------------- Trend Micro Vision One - API Tools ----------------------------------------";
    echo ' ';
    echo "1. Isolate an Endpoint based on GUID"
    echo "2. Isolate an Endpoint based on Hostname"
    echo "3. Restore the connection of an Isolated Endpoint"
    echo "4. Check the Response Status"
    echo "5. Add an IOC to the SO list"
    echo "6. Exit from menu "
    echo ' ';
    echo "--------------------------------------------------------------------------------------------------------------------"; 
    echo "";;
  # Option 5
  5)  echo "You have selected the option 5"
    clear
    echo '-----------------------------------'
    cd scripts
    clear
    python3 v1-solist.py
    read -p "Press any key to continue.."
    sleep 5
    clear
    echo "---------------------------------------- Trend Micro Vision One - API Tools ----------------------------------------";
    echo ' ';
    echo "1. Isolate an Endpoint based on GUID"
    echo "2. Isolate an Endpoint based on Hostname"
    echo "3. Restore the connection of an Isolated Endpoint"
    echo "4. Check the Response Status"
    echo "5. Add an IOC to the SO list"
    echo "6. Exit from menu "
    echo ' ';
    echo "--------------------------------------------------------------------------------------------------------------------"; 
    echo "";; 
  6)  echo "Quitting ..."
    echo ' '
      exit;;
  
  # Default Pattern
  *) echo "invalid option";;
  
esac
  echo -n "Enter your menu choice [1-5]: "
done
