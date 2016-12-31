# mit pharos printing http://kb.mit.edu/confluence/display/istcontrib/Install+the+Pharos+printing+client+on+Ubuntu
wget -N https://debathena.mit.edu/apt/debathena-archive.asc;
apt-key add debathena-archive.asc
# change xenial to your version of ubuntu
echo "# for pharos printing\n
deb http://debathena.mit.edu/apt xenial debathena debathena-config debathena-system\n
deb-src http://debathena.mit.edu/apt xenial debathena debathena-config debathena-system" | sudo tee -a /etc/apt/sources.list


# update new information
sudo apt-get update

# install the specific printer packages

sudo apt-get install -y debathena-pharos-support

# obtain printer GUI

sudo apt-get install -y system-config-printer-gnome

# start up printer GUI
system-config-printer

