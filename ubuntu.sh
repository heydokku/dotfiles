
# canon printer driver download link
# https://asia.canon/en/support/0100595001
sudo apt install cups-backend-bjnp
cd Downloads
tar -zxvf linux-UFRIILT-drv-v140_uken.tar.gz
cd linux-UFRIILT-drv-v140_uken
sudo ./install.sh

# install gnome desktop
sudo apt install ubuntu-gnome-desktop

# flutter
sudo snap install flutter --classic

# install gnome extension in browser for ubuntu, as named  ‘tweak’
sudo apt install ranger
pip install ueberzug
mkdir ~/.config/ranger
touch ~/.config/ranger/rc.conf
# Add this configuration to rc.conf
set preview_images_method ueberzug
default_linemode devicons
set show_hidden true


