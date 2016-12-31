## install RMG environment
cd ~/workspace/RMG-Py
conda env create -f environment_linux.yml
source activate rmg_env
make
conda install -y jupyter pandas seaborn

conda install -y -c conda-forge jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
jupyter nbextension enable spellchecker/main
jupyter nbextension enable toc2/main
source deactivate


#setup python 3.5 environment for cantera...might also want to set up conda environments from a file mentioned in the cheat sheet
# note: as of December 2016 jupyter and cantera were not compatible with python 3.6
conda create -n p3 python=3.5
source activate p3
conda install -y jupyter scipy pandas seaborn scikit-learn

conda install -y -c conda-forge jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
jupyter nbextension enable spellchecker/main
jupyter nbextension enable toc2/main

conda install -y -c Cantera cantera
conda install -y -c bryanwweber cantera 
# second one is more out of date, but worked the last time I tried. 
#sudo apt-get install cantera-python3
