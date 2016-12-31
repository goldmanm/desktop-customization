
In a clean install of x/l/ubuntu, download this github repo and follow the steps.


# steps to setup ubuntu distros with my personal settings

0. place scripts in `~/scripts`
1. run `install_programs.sh`
2. input RSS key to [github](https://help.github.com/articles/generating-an-ssh-key/)
3. run `obtain_code.sh`
4. run `install_anaconda.sh`
5. run `setup_python.sh`
6. run  (or alternative environments if you want to do that)
0. clean up junk on home directory

**note: you may want to double check the scripts so you know what you are installing.**

# extra auxillary steps

Other scripts are located in `aux/` and can install useful functions

* **symbolic_links.sh** has symbolic links from Dropbox that I've used to sync computer better
* **mit_print.sh** installs MIT printing functionality. You should change the script to the current version of ubuntu, though an older version worked perfectly fine. After running, setup a printer using the graphical interface described [here](http://kb.mit.edu/confluence/display/istcontrib/Install+the+Pharos+printing+client+on+Ubuntu)
* **setup_i3.sh** sets up the i3 tilting manager for ubuntu 
	* there are a few suggestions mentioned on the link in the setup_up
	* credit goes to (Erik Dubois)[https://github.com/erikdubois/i3-on-Ubuntu-16.10] for writing an excellent installation guide to i3.
* **crashplan.sh** sets up crashplan pro. you will need an mit membership for this work
* **old_scripts.sh** here are old scripts that probably don't work


# things still to figure out

* syncing thunderbird email and rss more effectively 
* spyder directories created easier
* setup files for gedit, spyder
