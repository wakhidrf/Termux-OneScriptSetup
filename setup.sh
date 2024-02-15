#! /bin/bash

echo "======================================================================"
echo "Installing Useful Package"
echo "======================================================================"

pkg upgrade -y && pkg update && pkg install fish vim mc neofetch ruby perl golang nodejs php python -y

gem install lolcat

echo "======================================================================"
echo "Moving to Fish Shell"
echo "======================================================================"

cd ../../usr/bin/
chsh -s fish
echo "done !"

echo "======================================================================"
echo "Styling Termux"
echo "======================================================================"

cd
cd Termux-OneScriptSetup/assets/
cp font.ttf ../../.termux/font.ttf
cp config.fish ../../.config/fish/config.fish
echo "done !"

echo "======================================================================"
echo "Please restart Termux by manually type exit !"
echo "======================================================================"
