#!/bin/bash


sudo apt-get install zsh -y

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "zsh" >> ~/.bashrc

# install node
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

# to use makefiles
sudo apt-get install -y build-essential

# python, pip, poetry
sudo apt-get install -y python3-distutils

sudo apt-get install -y python3-apt

curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

python3 get-pip.py

rm get-pip.py

source $HOME/.poetry/env

