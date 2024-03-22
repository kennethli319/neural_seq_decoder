# git clone speechbci
git clone https://github.com/fwillett/speechBCI.git
cd speechBCI
# install ND

cd NeuralDecoder
pip install -e .

# install LD

cd ..
cd LanguageModelDecoder
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
sudo apt  install cmake 
cmake ..
make -j16

cd ..
python setup.py install

# install ND
cd ~/neural_seq_decoder
pip install -e .
# update 
pip install protobuf==3.20