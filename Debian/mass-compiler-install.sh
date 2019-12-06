echo "NOTE: Not all the software will be up to date but it exists"
sudo su
apt update
apt install gcc g++ scala java default-jdk node fsharpc mono-mcs valac cmake make mysql gobjc gnustep gnustep-devel php kotlin
curl https://sh.rustup.rs -sSf | sh

# To add more compilers add them on, please do not remove compilers
