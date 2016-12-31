
# for i3 desktop (from https://github.com/erikdubois/i3-on-Ubuntu-16.10)
# step 1
sudo apt-get install -y i3 i3lock i3status i3-wm 
sudo apt-get install -y dmenu
# skip step 2
# step 3
sudo apt-get install -y numlockx
numlockx on
sudo apt-get install -y feh lxappearance scrot compton unclutter 
sudo apt-get install -y pasystray paman paprefs pavumeter pulseaudio-module-zeroconf
sudo apt-get install -y terminator
mkdir ~/.config/i3
# step 6
sudo apt-get install -y conky
sudo apt-get install -y variety


# other things to do
mkdir ~/.config/i3
cp ~/scripts/aux_scripts/i3/* ~/.config/i3
cp ~/scripts/aux_scripts/i3/.* ~/.config/i3
cd ~/.config/i3
mkdir ../terminator
mv config_terminator ~/.config/terminator/config
mv settings.ini ~/.config/gtk-3.0/settings.ini
mv .gtkrc-2.0 ~/.gtkrc-2.0
# copy i3 file from my github repo to the ~/.config/i3
# move config_terminator to .config/terminator/config
# move settings.ini to ~/config/gtk-3.0/settings.ini
# move .gtkrc-2.0 to ~/.gtkrc-2.0