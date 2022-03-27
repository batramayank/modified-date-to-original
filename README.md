# modified-date-to-original
**What this project is?**
Sometimes when copying/downloading (digital) photographs from different sources, the date modified could get replaced by the current date. One such scenario can happen when downloading photographs from google photos on to mac. But then you need to have those photographs in chronology when they were clicked and not when they were downloaded. Why? Lets say you want to make an album of your child since his/her birth. The modified date showing all photographs clicked today won't help. Will it? Maybe you will owe an explanation to them. This project is to save you from that embarrasment in front of your children by replacing jpg file's 'date modified' to 'creation date' 

**Where does the photograph creation date comes from?**
Exchangeable image file format (officially Exif, according to JEIDA/JEITA/CIPA specifications) is a standard that specifies the formats for images, sound, and ancillary tags used by digital cameras (including smartphones), scanners and other systems handling image and sound files recorded by digital cameras. Refer details - https://en.wikipedia.org/wiki/Exif

**Pre-requisite**
1. ExifTool is a requirement for this. Please download and installed from this link : https://exiftool.org/install.html#MacOS
2. This program is for mac OS. Though it could work on Linux as is or with minor changes, it has not been tested on linux

**How to use the file?**
1. get to the directory where all the photographs are present : cd <directory-with-photographs> eg. cd ~/dev/images
2. download the file centerpiece.sh file at this location
3. Make the file executable by giving permissions : chmod +x centerpiece.sh 
3. Execute the bash script : ./centerpiece.sh <path-to-photograph-directory> <path-to-exif-tool> eg. ./centerpiece.sh ~/dev/imageCreate/images/WO2 ~/Downloads/Image-ExifTool-12.40/exiftool
