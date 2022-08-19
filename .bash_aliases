#for RMG-quantum calcs
export rmg=~/workspace/RMG-Py
alias mopac='/opt/mopac/MOPAC2012.exe'

#for athena
alias athena='ssh -X goldmanm@athena.dialup.mit.edu'

#for rainier
alias rainier='ssh -X goldmanm@rainier.mit.edu'
#to run chemkin, go to 'scripts' and then type './chemkin'
export rainierdir=goldmanm@rainier.mit.edu:

#for pharos/hyksos
alias pharos='ssh -X goldmanm@pharos.mit.edu'
export pharosdir=goldmanm@pharos.mit.edu:
alias hyksos='ssh -X goldmanm@hyksos.mit.edu'
export hyksosdir=goldmanm@hyksos.mit.edu:

#process for shrinking scanned pdfs from open note scanner
#convert -density 50 -quality 5 -compress jpeg PDF-20220804-211005_backup.pdf output.pdf

#for rxn workbench on erebor
alias erebor='ssh -X goldmanm@erebor.mit.edu'
export erebordir=goldmanm@erebor.mit.edu:
#get into environment with:
#source /opt/reaction/chemkin15142_linuxx8664/bin/chemkinpro_setup.ksh
#rdworkbench

#for rmg server
alias rmg='ssh -XC goldmanm@rmg.mit.edu'
export rmgdir=goldmanm@rmg.mit.edu:

#for vpn to mit
alias vpnmit='sudo openconnect -u goldmanm vpn.mit.edu/duo'

#for encryption
alias decrypt='sudo encfs /media/shared/personal/.encrypted /home/mark/Documents/finances -o umask='000' --public'
alias encrypt='sudo fusermount -u /home/mark/Documents/finances'

#research related changes
#alias ermg='source activate rmg_env; source /usr/local/bin/setup_cantera'
alias ermg='source activate rmg_env'
alias ermg3='source activate rmg_env3'
alias ep3='source activate p3'
alias alpaca='source activate alpaca'
#alias openju='jupyter notebook --browser=chromium-browser --NotebookApp.iopub_data_rate_limit=10000000'
alias openju='jupyter lab --browser=chromium-browser'
export RMG=/home/mark/workspace/RMG-Py

#add research tools
export PYTHONPATH="/home/mark/workspace/RMG-Py:/home/mark/workspace/tools:/home/mark/workspace/alkoxy-sar:/home/mark/workspace/arc:$PYTHONPATH"

# for email
alias mount_thunder='sshfs mark@random-seven-thirty-six.mit.edu:/home/mark/Dropbox\ \(MIT\)/scripts/thunderbird_files/05czgchz.default /home/mark/.thunderbird/home.default'
alias unmount_thunder='fusermount -u /home/mark/.thunderbird/home.default'

# for email
alias mount_thunder='sshfs mark@random-seven-thirty-six.mit.edu:/home/mark/.thunderbird/05czgchz.default /home/mark/.thunderbird/home.default'
alias unmount_thunder='fusermount -u /home/mark/.thunderbird/home.default'

#linux related changes
alias editbash='sudo gedit ~/.bashrc'

#remote in
alias tolab='ssh -X mark@toba.mit.edu; source .bashrc'

#open shortcut
alias open='mimeopen'

# change monitor configurations
alias laptop-external='xrandr --output eDP1 --off'
alias laptop-internal='xrandr --output eDP1 --auto'
alias laptop-mirror='xrandr --output eDP1 --primary --output HDMI1 --same-as eDP1 --output VGA1 --same-as eDP1'

# call i3exit.sh
alias wm='~/.config/i3/i3exit.sh'

# duplicate on both screens
alias duplicate='xrandr --output HDMI-1 --same-as eDP-1 --auto'
alias right-of='xrandr --output HDMI-1 --right-of eDP-1 --auto'
alias left-of='xrandr --output HDMI-1 --left-of eDP-1 --auto'
alias right-dp='xrandr --output DP-1 --right-of eDP-1 --auto'

# open notes of interest
alias open_notes='gedit --new-window ~/research/notes/tech/latex.md ~/research/notes/tech/linux.md ~/research/notes/tech/python.md ~/research/notes/tech/git.md ~/research/notes/tech/markdown.md ~/research/notes/tech/pharos.md ~/.bash_aliases'
alias open_projects='gedit --new-window ~/research/notes/todo.md ~/research/isotopes/isotope_readme.md ~/research/branching/branching_readme.md ~/research/sar/sar_readme.md ~/research/butanol/butanol_readme.md'

alias molden='/home/mark/molden/molden5.9/molden'

# disable touchscreen
alias disable_touchscreen="xinput disable `xinput | grep 'maXTouch Digitizer' | grep 'pointer' | awk '{print $7}' | sed 's/id=//'`"

