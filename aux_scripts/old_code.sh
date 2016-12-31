#install mopac - for RMG runs using quantum chemistry...
cd /
sudo mkdir -p /opt/mopac/
sudo chmod 777 /opt/mopac
sudo cp $HOME/desktop/setuplinux/mopac/MOPAC2012.exe /opt/mopac/
'/opt/mopac/MOPAC2012.exe' [access code here]

export PYTHONPATH=$PYTHONPATH:RMG-Py/


## setup cantera source code for improving the software
#setup cantera & c++ (need to finish writing this method)
sudo apt-get install -y scons libboost-all-dev libsundials-serial-dev g++ valgrind
pip install cython # caused errors here, maybe not needed. python-dev python-numpy python-numpy-dev



#these two statements get git to remember your password for a 10 weeks (number in seconds)
# not for git config
#git config --global credential.helper cache
#git config --global credential.helper 'cache --timeout=3600000'

