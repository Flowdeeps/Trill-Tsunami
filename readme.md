# Trill Tsunami

## Installation

### Uploading to Bela

This script presumes that you are in your local repo. The Bela will automatically detect the project. 
`rsync --avz -e ssh --progress . root@192.168.7.2:Bela/projects/Trill_Tsunami`

### Downloading from Bela

If you've edited the file on the board and want to have local copies then you can just reverse the order of operation:
`rsync --avz -e ssh --progress root@192.168.7.2:Bela/projects/Trill_Tsunami/* .`
