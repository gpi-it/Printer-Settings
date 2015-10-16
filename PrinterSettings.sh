#! /bin/bash

echo "	Please make sure you have an active internet connection"
read -p "	Press Enter to start"

if [[ '-e greenpeace.international && echo exists' ]]; then
		cd /tmp/
		curl -O http://greenpeace.international/configfiles/_1st_Floor_Canon.ppd
		curl -O http://greenpeace.international/configfiles/_2nd_Floor_Canon.ppd
		echo " "
		echo "	Please enter your computer password"
		sudo cp /tmp/_1st_Floor_Canon.ppd /etc/cups/ppd/_1st_Floor_Canon.ppd
		sudo cp /tmp/_2nd_Floor_Canon.ppd /etc/cups/ppd/_2nd_Floor_Canon.ppd
		echo " "
		echo "	Settings updated!"
	else
		echo " "
		echo "	Remote files not found"
		echo " "
		exit 1
fi