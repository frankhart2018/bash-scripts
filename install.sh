if [ $1 == "linux" ]; then
    ./install-linux.sh
elif [ $1 == "mac" ]; then
    ./install-mac.sh
else
    echo "Usage: install.sh [linux|mac]"
fi