#!/bin/bash


echo -e "downloading dependencies...\n\n"

sudo apt-get install -y build-essential clang bison flex libreadline-dev gawk tcl-dev libffi-dev git mercurial graphviz xdot pkg-config python python3 libftdi-dev


echo -e "storing in local folder '~/OpenSource_ICE40_Flow'\n"


echo -e "creating '~/OpenSource_ICE40_Flow'\n"
fpga_home=~/OpenSource_ICE40_Flow
mkdir $fpga_home

echo -e "installing IceStorm tools in ~/OpenSource_ICE40_Flow/icestorm\n"
cd $fpga_home
git clone https://github.com/cliffordwolf/icestorm.git icestorm
cd $fpga_home/icestorm
make -j$(nproc)
sudo make install

echo -e "installing Arache-PNR in ~/OpenSource_ICE40_Flow/arachne-pnr\n"
cd $fpga_home
git clone https://github.com/cseed/arachne-pnr.git arachne-pnr
cd $fpga_home/arachne-pnr
make -j$(nproc)
sudo make install


echo -e "installing Yosys in ~/OpenSource_ICE40_Flow/yosys\n"
cd $fpga_home
git clone https://github.com/cliffordwolf/yosys.git yosys
cd $fpga_home/yosys
make -j$(nproc)
sudo make install

