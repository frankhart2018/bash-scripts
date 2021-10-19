if [ $1 == "linux" ]; then
    ./install-linux.sh
elif [ $1 == "macos" ]; then
    ./install-macos.sh
else
    echo "Usage: install.sh [linux|macos]"
fi