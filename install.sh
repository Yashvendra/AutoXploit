#!/bin/bash

white='\033[0;37m'
NC='\033[0m'
clear
printf '\033]2; INSTALLER\a'
echo -e "Press \e[1;33many key\e[0m to install the script..."
read -n 1 
clear

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ "$DIR" != "/root/autoxploit" ]]
then
	echo -e "I will try to install it for you..."
	sleep 4
	if [[ -d /root/autoxploit ]]
	then 
		rm -r /root/autoxploit
	fi
	mkdir /root/autoxploit
	cp -r "$DIR"/* /root/autoxploit
	chmod +x /root/autoxploit/install.sh
	#gnome-terminal -- bash -c "sudo /root/autoxploit/install.sh; exec bash"
fi
echo -e "Installing AutoXploit..."
sleep 1
echo -e "Fixing permissions..."
sleep 2
chmod +x /root/autoxploit/autoxploit.sh
clear
echo -e "Copying script to /bin/autoxploit"
cd /root/autoxploit
cp /root/autoxploit/autoxploit.sh /bin/autoxploit
clear
while true
do  
	clear
	echo -e "Are you \e[1;33mu\e[0mpdating or \e[1;33mi\e[0mnstalling the script?(\e[1;33mu\e[0m/\e[1;33mi\e[0m): "
	echo -e "Only use 'i' for the first time."
	read UORI
	if [[ "$UORI" = "u" ]]
	then 
		clear 
		echo -e "This feature is currently under construction.."
		sleep 3
	elif [[ "$UORI" = "i" ]]
	then 
		clear
		BASHCHECK=$(cat ~/.bashrc | grep "/bin/autoxploit")
		if [[ "$BASHCHECK" != "" ]]
		then 
			echo -e "I SAID USE i ONLY ONE TIME..........."
			sleep 3
			break
		fi
		echo -e "Adding AutoXploit to PATH so you can access it from anywhere"
		sleep 1
		export PATH=/bin/autoxploit:$PATH
		sleep 1
		echo "export PATH=/bin/autoxploit:$PATH" >> ~/.bashrc
		sleep 1
		clear
		break
	fi
done
sleep 1
echo -e "Installation is finished. Type 'sudo autoxploit' to launch the script after we exit."
sleep 0.5
echo -en "Starting AutoXploit"; sleep 0.5 ;echo -en "." ;sleep 0.5 ;echo -en "." ;sleep 0.5 ;echo -en "." ;sleep 0.5 ;echo -en "." ;
sudo autoxploit


