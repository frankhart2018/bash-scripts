if [ $1 == "linux" ]; then
    ./install-linux.sh
elif [ $1 == "macos" ]; then
    ./install-mac.sh
else
    echo "Usage: install.sh [linux|macos]"
fi