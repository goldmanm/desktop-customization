# install git stuff

######### create usable ssh keys
mkdir ~/.ssh
chmod 700 ~/.ssh
ssh-keygen -t rsa

echo 'Please add your ssh key to github now. Press enter when done'
read finished


mkdir ~/workspace
cd ~/workspace
git clone git@github.com:ReactionMechanismGenerator/RMG-Py.git
git clone git@github.com:ReactionMechanismGenerator/RMG-database.git
#git clone git@github.com:ReactionMechanismGenerator/RMG-website.git
#git clone git@github.com:Cantera/cantera.git
git clone git@github.com:goldmanm/website.git
git clone git@github.com:goldmanm/tools.git

## install RMG environment
cd RMG-Py
conda env create -f environment_linux.yml
source activate rmg_env
make
conda install -y jupyter pandas seaborn
source deactivate



##############for personal website
sudo apt-get install -y ruby ruby-dev nodejs 
sudo gem install jekyll
sudo gem install bundler
cd $HOME/workspace/website
## maybe the statement below isn't ideal. seemed to modify the structure of the program.
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


##write commands to bashrc
sudo echo "
#for RMG elements
export RDBASE=$HOME/workspace/rdkit
export rmg=$HOME/workspace/RMG-Py
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$RDBASE/lib
export LD_LIBRARY_PATH=:/lib
export cantera=$HOME/workspace/cantera
export PYTHONPATH=$PYTHONPATH:$RDBASE:$rmg:$cantera
#for anaconda
export PATH=/home/mark/Workspace/anaconda/bin:$PATH
" >> $HOME/.bashrc
source .bashrc

