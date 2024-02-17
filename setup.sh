#! /bin/bash

echo "======================================================"
echo "Installing Useful Package"
echo "======================================================"

pkg upgrade -y && pkg update && pkg install wget fish glow vim mc neofetch rust ruby perl golang nodejs php python tur-repo -y
pkg update && pkg install code-server mariadb phpmyadmin
gem install lolcat

echo "======================================================"
echo "Moving to Fish Shell"
echo "======================================================"

cd
cd ../usr/bin/
chsh -s fish
echo "done !"

echo "======================================================"
echo "Disabling MOTD"
echo "======================================================"

cd
cd ../usr/etc/
mv motd .motd
echo "done !"

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

echo "======================================================"
echo "Please restart Termux by manually type exit !"
echo "======================================================"
