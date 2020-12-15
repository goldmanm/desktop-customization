
## add symbolic links into files
#ln -s "~/Dropbox (MIT)/Research" ~/
#mv ~/Research ~/research

# add bash aliases
current_wd=$(pwd)
ln -is $current_wd/.bash_aliases $HOME/

# setup git user information
sudo echo "[user]
	email = goldmanm@mit.edu
	name = Mark Goldman" > $HOME/.gitconfig

# limit cacheing of directory by gnome tracker (not sure how it is better/worse than mlocate)
gsettings set org.freedesktop.Tracker.Miner.Files low-disk-space-limit 1
