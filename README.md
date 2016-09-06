## Brunnhilde GUI  

### Installation  

#### Install Brunnhilde CLI utility  

Install the Brunnhilde command-line utility by downloading the source code from the [Brunnhilde](http://github.com/timothyryanwalsh/brunnhilde) repo and saving brunnhilde.py to your local disk. 

For easy installation in Bitcurator, save the script to /usr/share/brunnhilde/brunnhilde.py.  

The GUI requires Brunnhilde v1.1.0 or higher. Dependencies must be installed as explained in [Brunnhilde](http://github.com/timothyryanwalsh/brunnhilde) repo.  

#### GUI Installation in Bitcurator  

The following instructions will install a graphical icon that launches the Brunnhilde GUI in the "Additional Tools" folder on the Bitcurator desktop.  

* Download zip or tar.gz file from Github and extract files to Desktop  
* Save files to /usr/share/brunnhilde-gui:  
`sudo mv /home/bcadmin/Desktop/brunnhilde-gui-master /usr/share/brunnhilde-gui`  
* In "Additional Tools", create a new file called "Brunnhilde.desktop". Open this file in a text editor and save the following contents:  
```
[Desktop Entry]
Type=Application
Name=Brunnhilde
Exec=/usr/share/brunnhilde-gui/launch
Icon=/usr/share/brunnhilde-gui/icon.png
```  
* Right-click on Brunnhilde.desktop, go to the "Permissions" tab, and check the box "Allow executing file as program"  
* Make bash script that launches GUI executable:  
`sudo chmod u+x /usr/share/brunnhilde-gui/launch`  

Note: If brunnhilde.py is not at /usr/share/brunnhilde/brunnhilde.py, you must modify the variable brunnhilde_path in line 60 of main.py to reflect the location of the Brunnhilde CLI script.  

You will now be able to launch the Brunnhilde GUI by double-clicking on the Brunnhilde icon in the "Additional Tools" folder.  

#### GUI Installation in Linux

* For non-Bitcurator Linux machines, make sure you have PyQt4 installed. In Debian/Ubuntu, this can be installed with the following command:  
`sudo apt-get install python-qt4`  
* Follow the steps above, placing the Brunnhilde.desktop file in a location of your choice and and making sure that the brunnhilde_path variable in line 60 of main.py is accurate.  

#### GUI Installation in MacOS/OS X  

* Install PyQt4 with Homebrew:  
`brew install pyqt`  
* Download zip or tar.gz file from Github and extract files to location of your choice  
* Modify the variable brunnhilde_path in line 60 of main.py to reflect the location of the brunnhilde.py script  
* Launch GUI by entering the following in a terminal:  
`python /path/to/brunnhilde-gui/main.py`  

### Usage  

For detailed information about how Brunnhilde works, see the [Brunnhilde command line utility](https://github.com/timothyryanwalsh/brunnhilde) repo.  

### Licensing  

The MIT License (MIT)  

Copyright (c) 2016 Tim Walsh  

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:  

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.  

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.  
