#!/bin/bash

# copy files to /usr/share/brunnhilde-gui
sudo mkdir /usr/share/brunnhilde-gui
sudo mv design.py /usr/share/brunnhilde-gui
sudo mv design.ui /usr/share/brunnhilde-gui
sudo mv icon.png /usr/share/brunnhilde-gui
sudo mv launch /usr/share/brunnhilde-gui
sudo mv main.py /sur/share/brunnhilde-gui

# create Brunnhilde GUI.desktop file
sudo touch '/home/bcadmin/Desktop/Additional Tools/Brunnhilde GUI.desktop'
echo '[Desktop Entry]' | sudo tee --append '/home/bcadmin/Desktop/Additional Tools/Brunnhilde GUI.desktop'
echo 'Type=Application' | sudo tee --append '/home/bcadmin/Desktop/Additional Tools/Brunnhilde GUI.desktop'
echo 'Name=Brunnhilde' | sudo tee --append '/home/bcadmin/Desktop/Additional Tools/Brunnhilde GUI.desktop'
echo 'Exec=/usr/share/brunnhilde-gui/launch' | sudo tee --append '/home/bcadmin/Desktop/Additional Tools/Brunnhilde GUI.desktop'
echo 'Icon=/usr/share/brunnhilde-gui/icon.png' | sudo tee --append '/home/bcadmin/Desktop/Additional Tools/Brunnhilde GUI.desktop'

# change permissions, ownership for Brunnhilde GUI.desktop
sudo chown bcadmin:bcadmin '/home/bcadmin/Desktop/Additional Tools/Brunnhilde GUI.desktop'
sudo chmod 644 '/home/bcadmin/Desktop/Additional Tools/Brunnhilde GUI.desktop'

# make files exectuable
sudo chmod u+x '/home/bcadmin/Desktop/Additional Tools/Brunnhilde GUI.desktop'
sudo chmod u+x /usr/share/brunnhilde-gui/launch