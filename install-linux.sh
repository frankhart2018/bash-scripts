echo 'Installing in linux...'

echo 'Installing git-fpull'
sudo cp ./common/git-fpull /usr/bin
sudo chmod +x /usr/bin/git-fpull

echo 'Installing loc'
sudo cp ./common/loc /usr/bin
sudo chmod +x /usr/bin/loc

echo 'Installing push'
sudo cp ./common/push /usr/bin
sudo chmod +x /usr/bin/push

echo 'Installing ptar'
sudo cp ./linux/ptar /usr/bin
sudo chmod +x /usr/bin/ptar

