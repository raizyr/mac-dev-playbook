#!/usr/bin/env bash

# Install Xcode Command Line Tools.
xcode-select --install
sudo xcodebuild -license

# /usr/sbin/softwareupdate --install-rosetta

# Update pip
# curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# python3 get-pip.py
sudo pip3 install --upgrade pip

# Install Ansible and Ansible Galaxy roles.
sudo pip3 install --ignore-installed ansible

# Clone the repository to your local drive.
git clone https://github.com/geerlingguy/mac-dev-playbook.git ~/.mac-dev-playbook

pushd ~/.mac-dev-playbook

# Install Ansible Galaxy roles.
ansible-galaxy install -r requirements.yml

popd