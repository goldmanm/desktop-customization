
In a clean install of x/l/ubuntu, download this github repo and follow the steps.


# steps to setup ubuntu distros with my personal settings

1. view `bash_setupubuntu.sh` to see the order scripts are executed. Comment out those not desired
2. run `bash_setupubuntu.sh`

The following scripts are called. Here are their descriptions:

* `install_programs.sh` - installs programs commonly used
* `setup_python.sh` - installs anaconda and sets up an anaconda evironment with common methods
* `obtain_code.sh` - installs RMG and my website
* `setup_i3.sh` - sets up the alternative desktop manager, i3, and moves desired settings there credit goes to [Erik Dubois](https://github.com/erikdubois/i3-on-Ubuntu-16.10)
* `input_config.sh` - adds some additional settings (like aliases) and startup scripts

**note: you may want to double check the scripts so you know what you are installing.**
