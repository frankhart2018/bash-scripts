sudo echo 'Installing in linux...'

echo 'Installing loc'
sudo cp ./common/loc /usr/bin
sudo chmod +x /usr/bin/loc

echo 'Installing git-init'
sudo cp ./common/git-init /usr/bin
sudo chmod +x /usr/bin/git-init

echo 'Installing git-fpull'
sudo cp ./common/git-fpull /usr/bin
sudo chmod +x /usr/bin/git-fpull

echo 'Installing push'
sudo cp ./common/push /usr/bin
sudo chmod +x /usr/bin/push

echo 'Installing gccc'
sudo cp ./common/gccc /usr/bin
sudo chmod +x /usr/bin/gccc

echo 'Installing gppc'
sudo cp ./common/gppc /usr/bin
sudo chmod +x /usr/bin/gppc

echo 'Installing ptar'
sudo cp ./linux/ptar /usr/bin
sudo chmod +x /usr/bin/ptar

