sudo echo 'Installing in macOS...'

echo 'Installing loc'
sudo cp ./common/loc /usr/local/bin
sudo chmod +x /usr/local/bin/loc

echo 'Installing git-init'
sudo cp ./common/git-init /usr/local/bin
sudo chmod +x /usr/local/bin/git-init

echo 'Installing git-fpull'
sudo cp ./common/git-fpull /usr/local/bin
sudo chmod +x /usr/local/bin/git-fpull

echo 'Installing push'
sudo cp ./common/push /usr/local/bin
sudo chmod +x /usr/local/bin/push

echo 'Installing gccc'
sudo cp ./common/gccc /usr/local/bin
sudo chmod +x /usr/local/bin/gccc

echo 'Installing gppc'
sudo cp ./common/gppc /usr/local/bin
sudo chmod +x /usr/local/bin/gppc

echo 'Installing ptar'
sudo cp ./macos/ptar /usr/local/bin
sudo chmod +x /usr/local/bin/ptar

