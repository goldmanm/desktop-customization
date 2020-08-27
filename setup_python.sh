CONTREPO=https://repo.continuum.io/archive/
# Stepwise filtering of the html at $CONTREPO
# Get the topmost line that matches our requirements, extract the file name.
ANACONDAURL=$(wget -q -O - $CONTREPO index.html | grep "Anaconda3-" | grep "Linux" | grep "86_64" | head -n 1 | cut -d \" -f 2)
wget -O ~/Downloads/anaconda.sh $CONTREPO$ANACONDAURL
bash ~/Downloads/anaconda.sh

#setup python 3.5 environment for cantera...might also want to set up conda environments from a file mentioned in the cheat sheet
# note: as of December 2016 jupyter and cantera were not compatible with python 3.6
conda create -n p3 python=3.7
source activate p3
conda install -y jupyter scipy pandas seaborn scikit-learn
conda install jupyterlab
conda install -y -c conda-forge jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
jupyter nbextension enable spellchecker/main
jupyter nbextension enable toc2/main

#conda install -y -c Cantera cantera

