sudo echo "Installing..."

echo "Installing git push"
sudo cp push /usr/local/bin/
sudo chmod +x /usr/local/bin/push

echo "Installing git fetch pull"
sudo cp git-fpull /usr/local/bin/
sudo chmod +x /usr/local/bin/git-fpull

echo "Installing ptar"
sudo cp ptar /usr/local/bin/
sudo chmod +x /usr/local/bin/ptar