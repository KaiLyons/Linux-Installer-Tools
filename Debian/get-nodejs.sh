echo "What NodeJS version do you require? [NOTE: NEEDS FULL VERSION NUMBER!!]"
read ver

sudo su
if command -v wget >/dev/null 2>&1 ; then
    echo "wget found"
    wget https://nodejs.org/dist/v${ver}/node-${ver}-linux-x64.tar.gz
    cd /opt/nodejs
    mv node-v${ver}-linux-x64 ${ver}
    ln -s ${ver} current
    ln -s /opt/nodejs/current/bin/node /bin/node
else
    echo "wget not found"
    apt install wget
    wget https://nodejs.org/dist/v${ver}/node-v${ver}-linux-x64.tar.gz
    cd /opt/nodejs
    mv node-${ver}-linux-x64 ${ver}
    ln -s ${ver} current
    ln -s /opt/nodejs/current/bin/node /bin/node
fi

clear
echo "installed successfully I think..."
node -v
echo "Make sure above has the right version number then you are done"
