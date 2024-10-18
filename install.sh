#!/bin/bash
echo "IT IS HIGHLY RECOMMENDED THAT YOU DO THIS ON A FRESH INSTALL!!!"
sleep 1s
echo "ALSO MAKE SURE YOU HAVE ALACRITTY, HYPRPAPER and ALACRITTY-THEMES! OR ELSE THIS WONT WORK!"
sleep 5s
clear
echo "Welcome to the installer for my dotFiles!"
sleep 1s
read -n 1 -s -r -p "Press any key to continue."
clear
sleep 1s
echo "Beginning installation, sit back and relax."
echo "Creating backup of existing configuration"
mv ~/.config/hypr/hyprland.conf ~/.config/hypr/hyprland.backup
mv ~/.config/waybar/style.css ~/.config/waybar/style.backup
mv ~/.config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.backup
mv ~/.config/waybar/config.jsonc ~/.config/waybar/config.backup
sleep 2s
echo "Copying over configuration files"
cp ~/skrimDotFiles/waybar/* ~/.config/waybar/
cp ~/skrimDotFiles/hypr/* ~/.config/hypr/
cp ~/skrimDotFiles/Alacritty/* ~/.config/alacritty/
sleep 1s
echo "Getting the wallpaper"
curl -o ~/Pictures/ign-waifu.png https://gruvbox-wallpapers.pages.dev/wallpapers/anime/ign-waifu.png
echo "Sucessfully installed."
