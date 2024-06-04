# System services, starting and enabling them
echo "starting bluetooth system service"
sudo systemctl start bluetooth.service
echo "bluetooth system service started"
echo "enabling bluetooth system service"
sudo systemctl enable bluetooth.service
echo "bluetooth system service enabled"
# Installing yay
echo "installing yay"
cd ~/Downloads
git clone https://aur.archlinux.org/yay.git
cd yay
{
  printf '\n'
} | makepkg -si
cd ..
rm -rf yay
echo "yay installed"
# Flagging script as being concluded
echo -e "\033[1;34mSetup Finished ;)\033[0m"
