#zotero
sudo add-apt-repository -y ppa:smathot/cogscinl

sudo apt-get update

sudo apt-get upgrade

#general
sudo apt-get install -y texlive-full pandoc texstudio okular
sudo apt-get install -y thunderbird gedit firefox redshift-gtk
sudo apt-get install -y stopwatch 
sudo apt-get install -y gtk-recordmydesktop shutter
sudo apt-get install -y nautilus-dropbox gparted
sudo apt-get install -y sed gedit
sudo apt-get install -y pinta inkscape
sudo apt-get install -y calibre audacity
# not currently functioning
# sudo apt-get install -y skype boot-repair dropbox
#sudo apt-get install -y hamster-applet

######### remove unity bloatware
sudo apt-get -y remove unity-webapps-common	#removes bloatware
gsettings set com.canonical.unity.webapps integration-allowed false


# 4 encryption
sudo apt-get install -y encfs

####### coding
sudo apt-get install -y spyder chromium-browser	git 
sudo apt-get install -y openconnect
# sudo apt-get install -y openssh-server
sudo apt-get install -y openssh-client
sudo apt-get install -y gcc gfortran 

##########for work
sudo apt-get install -y libreoffice
sudo apt-get install -y zotero-standalone
#auto-setup site-manager
sudo apt-get install -y filezilla			
sudo apt-get install -y avogardro

##########for markdown
sudo apt-get install pandoc
#markdown editor - installation causing errors now
#cd $HOME
#sudo dpkg -i remarkable_1.62_all.deb
#sudo apt-get -f -y install			#installs dependencies
#sudo dpkg -i remarkable_1.62_all.deb
#sudo apt-get install -y python3-gtkspellcheck #spell check for remarkable



######### create usable ssh keys
mkdir ~/.ssh
chmod 700 ~/.ssh
ssh-keygen -t rsa

