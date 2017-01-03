# install git stuff

mkdir ~/workspace
cd ~/workspace
git clone git@github.com:ReactionMechanismGenerator/RMG-Py.git
git clone git@github.com:ReactionMechanismGenerator/RMG-database.git
#git clone git@github.com:ReactionMechanismGenerator/RMG-website.git
#git clone git@github.com:Cantera/cantera.git
git clone git@github.com:goldmanm/website.git
git clone git@github.com:goldmanm/tools.git


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

