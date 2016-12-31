##write commands to bashrc
sudo echo "
#for RMG elements
export RDBASE=$HOME/workspace/rdkit
export rmg=$HOME/workspace/RMG-Py
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$RDBASE/lib
export LD_LIBRARY_PATH=:/lib
export cantera=$HOME/workspace/cantera
export PYTHONPATH=$PYTHONPATH:$RDBASE:$rmg:$cantera
#for anaconda
export PATH=/home/mark/Workspace/anaconda/bin:$PATH
" >> $HOME/.bashrc
source .bashrc

## add symbolic links into files
ln -s "~/Dropbox (MIT)/Research" ~/
mv ~/Research ~/research
ln -s "~/Dropbox (MIT)/scripts/setuplinux/.bash_aliases" ~/

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

sudo echo "[Desktop Entry]
Name=hamster-app
GenericName=time management
Comment=open hamster app in upper left corner
Exec=hamster-indicator
Terminal=false
Type=Application
Icon=remarkable
Categories=Utility;
StartupNotify=false" > $HOME/.config/autostart/hamster.desktop

## remarkable config
sudo echo "{'word-wrap': True, 'nightmode': False, 'font': 'Sans 15', 'css': 'body{\n\tbackground:#000;\n\tfont-family:"Open Sans",AppleSDGothicNeo-Medium,"Segoe UI","Malgun Gothic",sans-serif;\n\tcolor:#EEE;\n\tline-height:1;\n\tpadding:30px;\n\tmargin:auto;\n\tmax-width:60em\n}\n\n\nh1,h2,h3,h4{\n\tfont-weight:400\n}\n\nh1,h2,h3,h4,h5{\n\tmargin-bottom:24px;\n\tpadding:0\t\n}\n\np{\n\tmargin-bottom:24px;\n\tpadding:0\n}\n\n\nh1{\n\tfont-size:48px\n}\n\nh2{\n\tborder-bottom:1px solid #796a5c;\n\tfont-size:36px;\n\tmargin:40px 0 8px\n}\n\nh3{\n\tfont-size:28px\n}\n\nh4{\n\tfont-size:24px\n}\n\nh5{\n\tfont-size:20px\n}\n\na{\n\tcolor:#61BFC1;\n\tmargin:0;\n\tpadding:0;\n\ttext-decoration:none;\n\tvertical-align:baseline\n}\n\na:hover{\n\ttext-decoration:underline\n}\n\na:visited{\n\tcolor:#466B6C\n}\n\nol,ul{\n\tpadding:0;\n\tmargin:0\n}\n\nli{\n\tline-height:24px\n}\n\nli ul{\n\tmargin-left:24px\n}\n\nol,p,ul{\n\tfont-size:20px;\n\tline-height:25px;\n\tmax-width:70em\n}\n\npre{\n\tpadding:0 24px;\n\tmax-width:800px;\n\twhite-space:pre-wrap\n}\n\ncode{\n\tfont-family:Consolas,Monaco,Andale Mono,monospace;\n\tline-height:1.5;\n\tfont-size:18px\n}\n\np>code{\n\tfont-family:Consolas,Monaco,Andale Mono,monospace;\n\tfont-size:.9em\n}\n\naside{\n\tdisplay:block;\n\tfloat:right;\n\twidth:25em\n}\n\nblockquote{\n\tborder-left:.5em solid #eee;\n\tpadding:0 2em;\n\tmargin-left:0;\n\tmax-width:70em\n}\n\nblockquote cite{\n\tfont-size:18px;\n\tline-height:22px;\n\tcolor:#bfbfbf\n}\n\nblockquote p{\n\tcolor:#666;\n\tmax-width:70em\n}\n\nhr{\n\twidth:540px;\n\ttext-align:left;\n\tmargin:0 auto 0 0;\n\tcolor:#999\n}\n\n\nmark{\n\tbackground-color:#ff69b4\n}\n\ntable{\n\tborder-collapse:collapse\n}\n\ntd,th{\n\tborder:1px solid #fff;\npadding:.5rem;\ntext-align:left}\n', 'live-preview': True, 'toolbar': True, 'statusbar': True, 'style': 'custom'}" > $HOME/.remarkable/remarkable.settings

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

## mendeley
sudo echo "[General]
installIdentifier=7b39084b-ac07-4d54-a75a-dd4df23222b3
ExecutablePath=/opt/mendeleydesktop/bin/mendeleydesktop
firstRun=false

[CrashReport]
consecutiveCrashCount=0
lastRunExitedCleanly=true
lastRunVersion=1.14
lastStartTime=1444956756
crashCount=4
runCount=75

[MendeleyWeb]
userEmail=markgoldman@utexas.edu
passwordHash=d4ccab5427c37470d3ede7bea9c59a1ad8f1cf32
oauth2RefreshToken=MSwxODc5Njc0MSw2LGFsbCwsLCxfVXI0TEllbklPclgxY0ViZ3F0c1o0b28zUDQ

[SpeechBubbles]
scenariosStatus=
lastScenarioState=InsertCitation:0

[%General]
ShowQuickstart=false
lastRunPlatform=Linux-3.13
lastAutomaticStylesUpdate=1444492157
lastDocumentsLocation=/home/mark/Research/Literature/Jalan/Unknown

[ExtraFields]
Generic\size=2
Generic\0=CitationKeyField
Bill\size=2
Bill\0=CitationKeyField
Book\size=3
Book\0=CitationKeyField
Book\1=DoiField
BookSection\size=3
BookSection\0=CitationKeyField
BookSection\1=DoiField
Case\size=2
Case\0=CitationKeyField
ComputerProgram\size=2
ComputerProgram\0=CitationKeyField
ConferenceProceedings\size=2
ConferenceProceedings\0=CitationKeyField
EncyclopediaArticle\size=2
EncyclopediaArticle\0=CitationKeyField
Film\size=2
Film\0=CitationKeyField
Hearing\size=2
Hearing\0=CitationKeyField
JournalArticle\size=4
JournalArticle\0=CitationKeyField
JournalArticle\1=DoiField
JournalArticle\2=ArxivIdField
MagazineArticle\size=2
MagazineArticle\0=CitationKeyField
NewspaperArticle\size=2
NewspaperArticle\0=CitationKeyField
Patent\size=2
Patent\0=CitationKeyField
Report\size=2
Report\0=CitationKeyField
Statute\size=2
Statute\0=CitationKeyField
Thesis\size=2
Thesis\0=CitationKeyField
TelevisionBroadcast\size=2
TelevisionBroadcast\0=CitationKeyField
WebPage\size=2
WebPage\0=CitationKeyField
WorkingPaper\size=2
WorkingPaper\0=CitationKeyField
version=1
Bill\1=DoiField
Book\2=IsbnField
BookSection\2=IsbnField
Case\1=DoiField
ComputerProgram\1=DoiField
ConferenceProceedings\1=DoiField
Generic\1=DoiField
EncyclopediaArticle\1=DoiField
Film\1=DoiField
Hearing\1=DoiField
JournalArticle\3=PmidField
MagazineArticle\1=DoiField
NewspaperArticle\1=DoiField
Patent\1=DoiField
Report\1=DoiField
Statute\1=DoiField
Thesis\1=DoiField
TelevisionBroadcast\1=DoiField
WebPage\1=DoiField
WorkingPaper\1=DoiField

[view]
citationStyle=http://www.zotero.org/styles/national-science-foundation-grant-proposals
citationStyleShowAccess=1
recentStyles\count=10
recentStyles\0=http://www.zotero.org/styles/apa
recentStyles\1=http://www.zotero.org/styles/american-medical-association
recentStyles\2=http://www.zotero.org/styles/american-political-science-association
recentStyles\3=http://www.zotero.org/styles/american-sociological-association
recentStyles\4=http://www.zotero.org/styles/chicago-author-date
recentStyles\5=http://www.zotero.org/styles/ieee
recentStyles\6=http://www.zotero.org/styles/harvard1
recentStyles\7=http://www.zotero.org/styles/modern-humanities-research-association
recentStyles\8=http://www.zotero.org/styles/modern-language-association
recentStyles\9=http://www.zotero.org/styles/national-science-foundation-grant-proposals
selectedView=TableView
selectedFilter=1
splitterBeforeHide=1190
filterQuickshareMode=FilterWidget
citationStyleLocale=
selectedFolder=/My Library/All Documents/
publicationAbbreviationsList=Default
citationStyleIncludePeriods=true

[toolbar]
showText=true

[geometry]
maximised=true
mainWindow=@ByteArray(\x1\xd9\xd0\xcb\0\x1\0\0\0\0\0\x39\0\0\0\x18\0\0\a\x7f\0\0\x4\x37\0\0\0\xf3\0\0\0\x82\0\0\x6\xc4\0\0\x3\xcd\0\0\0\0\x2\0)
newLibrarySplitter=@ByteArray(\0\0\0\xff\0\0\0\0\0\0\0\x2\0\0\0\xff\0\0\x2\x9e\x1\0\0\0\x6\x1\0\0\0\x1)
horizontalSplitter=@ByteArray(\0\0\0\xff\0\0\0\0\0\0\0\x2\0\0\x6<\0\0\0\0\x1\0\0\0\x6\x1\0\0\0\x1)
verticalSplitter=@ByteArray(\0\0\0\xff\0\0\0\0\0\0\0\x2\0\0\x2x\0\0\0\xfc\x1\0\0\0\x6\x1\0\0\0\x2)

[FolderMonitoring]
enabled=false

[ZoteroSync]
sqliteFilePath=
enabled=false

[Features]
recommendations=true

[Bibtex]
escapeSpecialChars=true
usePublicationAbbreviations=false

[BibtexSync]
enabled=true
path=/home/mark/Research/Presentations-Writings/proposal2
syncMode=SingleFile

[citationEditor]
hintDisabled=false" > $HOME/.config/Fendeley\ Ltd./Mendeley\ Desktop.conf
