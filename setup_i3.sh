
# for i3 desktop 

# import ubuntu repositories, since even xenial is out of date (http://i3wm.org/docs/repositories.html)
echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get --allow-unauthenticated install -y sur5r-keyring

# installation information and guide came from (from https://github.com/erikdubois/i3-on-Ubuntu-16.10)

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
# step 6
sudo apt-get install -y conky
sudo apt-get install -y variety


# copy and move configuration files
#mkdir -p ~/.config/i3
#cp i3_files/* ~/.config/i3
#cp i3_files/.* ~/.config/i3
#mkdir -p ~/.config/terminator
#mkdir ../terminator
#cp i3_files/config_terminator ~/.config/terminator/config
#cp i3_files/settings.ini ~/.config/gtk-3.0/settings.ini
#cp i3_files/.gtkrc-2.0 ~/.gtkrc-2.0

