sudo echo "Installing in macOS..."

echo "Installing git push"
sudo cp common/push /usr/local/bin/
sudo chmod +x /usr/local/bin/push

echo "Installing git fetch pull"
sudo cp common/git-fpull /usr/local/bin/
sudo chmod +x /usr/local/bin/git-fpull

echo "Installing ptar"
sudo cp macos/ptar /usr/local/bin/
sudo chmod +x /usr/local/bin/ptar