This repository contains bash scripts and configuration files for setting up Ubuntu with i3 desktop manager. In case you're not familiar, i3 desktop manager is designed to automatically maximize screen size and it is quite customizable. It definitely requires more keyboard shortcuts than other window managers, but can be well worth it.

To set up, in a clean install of x/l/ubuntu, download this github repo and run the follow the steps.

# instructions

The following scripts can be called with `./[script name]` from the terminal. Here are their descriptions:

* `install_programs.sh` - installs programs commonly used
* `setup_python.sh` - installs anaconda and sets up an anaconda evironment with common methods
* `obtain_code.sh` - installs RMG and my website
* `setup_i3.sh` - sets up the alternative desktop manager, i3, and moves desired settings there. Credit goes to [Erik Dubois](https://github.com/erikdubois/i3-on-Ubuntu-16.10)
* `setup_smb.sh` - allows the user to automatically link a samba media server on startup. If the drive is access-restricted by a username and password, the user should place those variables in a `.smbcredentials` file. Read more [here](https://timlehr.com/auto-mount-samba-cifs-shares-via-fstab-on-linux/)
* `input_config.sh` - adds some additional settings (like bash aliases) and startup scripts

**note: you may want to double check the scripts so you know what you are installing.  Remember, this repository comes with no warranty.**
