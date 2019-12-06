if command -v curl >/dev/null 2>&1 ; then
    echo "curl found"
    sudo apt -y update && sudo apt -y upgrade
    curl -sL https://deb.nodesource.com/setup_13.x | sudo bash -
    sudo apt-get install -y nodejs
    node -v
else
    echo "curl not found, finding curl"
    sudo apt install curl
    sudo apt -y update && sudo apt -y upgrade
    curl -sL https://deb.nodesource.com/setup_13.x | sudo bash -
    sudo apt-get install -y nodejs
    node -v
fi
