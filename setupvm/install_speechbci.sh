# git clone speechbci
git clone https://github.com/fwillett/speechBCI.git
cd speechBCI

sudo apt update
sudo apt install make 
sudo apt install build-essential

cd srilm-1.7.3
export SRILM=$PWD
make -j16 MAKE_PIC=yes World && make -j16 cleanest

cd ..
cd runtime/server/x86
 mkdir build && cd build

sudo apt-get install zlib1g-dev
cmake ..
make -j16v

cd ..
python setup.py install