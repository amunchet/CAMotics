#!/bin/bash

# To be run as root

# Load essentials
apt update
apt-get -y install scons build-essential qt5-default python-six \
  libqt5websockets5-dev libqt5opengl5-dev libnode-dev libglu1-mesa-dev \
  pkgconf git


# Install CBang
git clone https://github.com/CauldronDevelopmentLLC/cbang.git
scons -C cbang

export CBANG_HOME=$PWD/cbang

# Install CAMotics
cd CAMotics
scons -Q debug=1