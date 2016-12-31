#this is a script to setup ubuntu to how I (Mark Goldman) want for a work computer.  feel free to comment out anything not wanted

#place folder setuplinux in $HOME directory

#before using this script:
	#move the crashplan file & anaconda script to the root directory
	#change git username in the 'setup git' section (if not goldmanm)

#after running this script, you still need to:
	#get MIT certificate
	#setup dropbox (in $HOME/Dropbox (MIT))
	#allow dropbox Research & scripts folder to sync
	#run input_config.sh

#add repositories
#sudo add-apt-repository -y ppa:nilarimogard/webupd8
#sudo add-apt-repository -y ppa:yannubuntu/boot-repair
#zotero
sudo add-apt-repository -y ppa:smathot/cogscinl

sudo apt-get update

#general
sudo apt-get install -y texlive-full pandoc texstudio okular
sudo apt-get install -y thunderbird gedit firefox redshift-gtk 
sudo apt-get install -y gtk-recordmydesktop shutter
sudo apt-get install -y nautilus-dropbox gparted
sudo apt-get install -y sed
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


############################
#stop and copy your ssh key to github (?)
############################

# install git stuff

mkdir ~/workspace
cd ~/workspace
git clone git@github.com:ReactionMechanismGenerator/RMG-Py.git
git clone git@github.com:ReactionMechanismGenerator/RMG-database.git
#git clone git@github.com:ReactionMechanismGenerator/RMG-website.git
#git clone git@github.com:Cantera/cantera.git
git clone git@github.com:goldmanm/website.git



##############for website
sudo apt-get install -y ruby ruby-dev nodejs 
sudo gem install jekyll
cd $HOME/workspace/website
jekyll new . --force

###########add my personal remote for RMG
cd $HOME/workspace/RMG-Py
git remote rename origin official
git remote add origin git@github.com:goldmanm/RMG-Py.git

cd $HOME/workspace/RMG-database
git remote rename origin official
git remote add origin git@github.com:goldmanm/RMG-database.git

#cd $HOME/workspace/RMG-website/
#git remote rename origin official
#git remote add origin git@github.com:goldmanm/RMG-website.git

#cd $HOME/workspace/cantera/
#git remote rename origin official
#git remote add origin git@github.com:goldmanm/cantera.git


###############################
#install python 3 anaconda
###############################
### install anaconda separately
###before starting download anaconda python 2.7 from continuum.io/downloads
#cd $HOME
#need to run this script seperetely
#sudo bash $HOME/Anaconda2-4.0.0-Linux-x86_64.sh
#source $HOME/.bashrc

## install RMG environment
cd RMG-Py
conda env create -f environment_linux.yml
source activate rmg_env
make
conda install -y jupyter pandas seaborn
source deactivate


#setup python 3.4 environment for cantera...might also want to set up conda environments from a file mentioned in the cheat sheet
conda create -n p3 python=3
source activate p3
conda install jupyter scipy pandas seaborn scikit-learn
conda install -c cantera cantera

#sudo apt-get install cantera-python3





#crashplan - only available while at MIT
#need to download from MIT website to /tmp directory first
#not able to connect to remote server
cd /tmp
tar zxf CrashPlanPROe_Linux.tgz
sudo -i
cd /tmp/CrashPlanPROe-install
#need to run this final step separately
./install.sh


# mit pharos printing http://kb.mit.edu/confluence/display/istcontrib/Install+the+Pharos+printing+client+on+Ubuntu
wget -N https://debathena.mit.edu/apt/debathena-archive.asc;
apt-key add debathena-archive.asc
# change xenial to your version of ubuntu
echo "# for pharos printing\n
deb http://debathena.mit.edu/apt yakkety debathena debathena-config debathena-system\n
deb-src http://debathena.mit.edu/apt akkety debathena debathena-config debathena-system" >>/etc/apt/sources.list


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

# other things to do
# copy i3 file from my github repo to the ~/.config/i3
# move config_terminator to .config/terminator/config
# move settings.ini to ~/config/gtk-3.0/settings.ini
# move .gtkrc-2.0 to ~/.gtkrc-2.0

