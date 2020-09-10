
## add symbolic links into files
#ln -s "~/Dropbox (MIT)/Research" ~/
#mv ~/Research ~/research
current_wd=$(pwd)
cd ~
home_wd=$(pwd)
cd $current_wd
ln -is $current_wd/.bash_aliases $home_wd/

##startup scripts

sudo echo "[Desktop Entry]
Comment=Color temperature adjustment tool
StartupNotify=true
Exec=redshift-gtk -l 41:-72
Terminal=false
GenericName=Color temperature adjustment
Version=1.0
Categories=Utility;
Hidden=false
Icon=redshift
Type=Application
X-GNOME-Autostart-enabled=true
Name=Redshift" > $HOME/.config/autostart/redshift-gtk.desktop

sudo echo "[Desktop Entry]
Name=Journal
GenericName=notes
Comment=pen up journal for writitng using remarkable
Exec=remarkable ~/research/notes/journal.markdown
Terminal=false
Type=Application
Icon=remarkable
Categories=Utility;
StartupNotify=false" > $HOME/.config/autostart/journal.desktop

## mozilla config
sudo echo "{\"version\":1,\"accountData\":{\"email\":\"markgoldman@utexas.edu\",\"uid\":\"279aa5a6d4e0434889071c9da6816ab5\",\"sessionToken\":\"9a115897bbce8f46dde0b5fd42ed6561816025e23b67e62706e5faacd350259e\",\"verified\":true,\"oauthTokens\":{\"profile\":{\"token\":\"887b2de38aa6d1196c1d7649b13a67fc02a86abd6e032a6beae31ed08a020b9d\",\"server\":\"https://oauth.accounts.firefox.com/v1\"}}}}" > $HOME/.mozilla/firefox/cfkh44j1.default/signedInUser.json


sudo echo "{\"version\":1,\"uid\":\"279aa5a6d4e0434889071c9da6816ab5\",\"tokens\":{\"profile\":{\"token\":\"30147dc9802738ee0f9d1c10019027217fb48b9b724c8c4ae36afaa30da74d3f\",\"server\":\"https://oauth.accounts.firefox.com/v1\"}}}" > $HOME/.mozilla/firefox/cfkh44j1.default/signedInUserOAuthTokens.json

sudo echo "[General]
StartWithLastProfile=1

[Profile0]
Name=default
IsRelative=1
Path=cfkh44j1.default" > $HOME/.mozilla/firefox/profiles.ini

sudo echo "[user]
	email = goldmanm@mit.edu
	name = MarkGoldman" > $HOME/.gitconfig


##filezilla config
sudo echo "<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<FileZilla3>
    <Servers>
        <Server>
            <Host>athena.dialup.mit.edu</Host>
            <Port>22</Port>
            <Protocol>1</Protocol>
            <Type>0</Type>
            <User>goldmanm</User>
            <Pass>oShadow91</Pass>
            <Logontype>1</Logontype>
            <TimezoneOffset>0</TimezoneOffset>
            <PasvMode>MODE_DEFAULT</PasvMode>
            <MaximumMultipleConnections>0</MaximumMultipleConnections>
            <EncodingType>Auto</EncodingType>
            <BypassProxy>0</BypassProxy>
            <Name>athena</Name>
            <Comments></Comments>
            <LocalDir></LocalDir>
            <RemoteDir></RemoteDir>
            <SyncBrowsing>0</SyncBrowsing>athena
        </Server>
        <Server>
            <Host>pharos.mit.edu</Host>
            <Port>22</Port>
            <Protocol>1</Protocol>
            <Type>0</Type>
            <User>goldmanm</User>
            <Logontype>2</Logontype>
            <TimezoneOffset>0</TimezoneOffset>
            <PasvMode>MODE_DEFAULT</PasvMode>
            <MaximumMultipleConnections>0</MaximumMultipleConnections>
            <EncodingType>Auto</EncodingType>
            <BypassProxy>0</BypassProxy>
            <Name>pharos</Name>
            <Comments></Comments>
            <LocalDir></LocalDir>
            <RemoteDir></RemoteDir>
            <SyncBrowsing>0</SyncBrowsing>pharos
        </Server>
        <Server>
            <Host>rainier.mit.edu</Host>
            <Port>22</Port>
            <Protocol>1</Protocol>
            <Type>0</Type>
            <User>goldmanm</User>
            <Logontype>2</Logontype>
            <TimezoneOffset>0</TimezoneOffset>
            <PasvMode>MODE_DEFAULT</PasvMode>
            <MaximumMultipleConnections>0</MaximumMultipleConnections>
            <EncodingType>Auto</EncodingType>
            <BypassProxy>0</BypassProxy>
            <Name>rainier</Name>
            <Comments></Comments>
            <LocalDir></LocalDir>
            <RemoteDir></RemoteDir>
            <SyncBrowsing>0</SyncBrowsing>rainier
        </Server>
    </Servers>
</FileZilla3>" > $HOME/.filezilla/sitemanager.xml

