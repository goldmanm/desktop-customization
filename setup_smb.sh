sudo apt-get install -y cifs-utils samba

# need to add line to fstab to run automatically
sudo mkdir /media/shared
sudo cp /etc/fstab /etc/fstab_backup
# you may need to modify the path to the smb, the version,
# and possibly the group/user id. 
# You may need to create `.smbcredentials` if you haven't already
sudo "//192.168.1.1/TotalC /media/shared cifs credentials="$HOME"/.smbcredentials,iocharset=utf8,vers=1.0,gid=1000,uid=1000,file_mode=0777,dir_mode=0777 0 0" >> /etc/fstab
