
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
