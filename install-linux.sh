sudo echo "Installing in linux..."

echo "Installing git push"
sudo cp common/push /usr/bin/
sudo chmod +x /usr/bin/push

echo "Installing git fetch pull"
sudo cp common/git-fpull /usr/bin/
sudo chmod +x /usr/bin/git-fpull

echo "Installing ptar"
sudo cp linux/ptar /usr/bin/
sudo chmod +x /usr/bin/ptar