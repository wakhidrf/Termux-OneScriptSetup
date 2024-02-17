#! /bin/bash

clear
echo "======================================================"
echo "Installing Useful Package"
echo "======================================================"

pkg upgrade -y && pkg update && pkg install wget fish glow vim mc neofetch rust ruby perl golang nodejs php python tur-repo -y
pkg update && pkg install code-server mariadb phpmyadmin
gem install lolcat

clear
echo "======================================================"
echo "Setting Fish Shell"
echo "======================================================"

cd
cd ../usr/bin/
chsh -s fish
echo "done !"

clear
echo "======================================================"
echo "Disabling MOTD"
echo "======================================================"

cd
cd ../usr/etc/
mv motd .motd
echo "done !"

clear
echo "======================================================"
echo "Styling Termux"
echo "======================================================"

cd
mkdir .config
mkdir .config/fish
cd Termux-OneScriptSetup/assets/
cp font.ttf ../../.termux/font.ttf
cp config.fish ../../.config/fish/config.fish
echo "done !"

clear
echo "======================================================"
echo "Please Restart Termux By Manually Type Exit !"
echo "======================================================"
