#this is a script to setup ubuntu to how I (Mark Goldman) want for a work computer.  feel free to comment out anything not wanted

#after running this script, you still need to:
	#setup dropbox (in $HOME/Dropbox (MIT))
	#allow dropbox Research & scripts folder to sync

# install basic software
bash install_programs.sh

# install python
bash setup_python.sh

# add i3 desktop
bash setup_i3.sh

# add code repositories
#bash obtain_code.sh

# add configurations not associated with i3
bash input_config.sh


