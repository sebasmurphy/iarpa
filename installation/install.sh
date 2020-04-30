apt-get --assume-yes update
apt-get --assume-yes install python-pip
pip install awscli
apt-get --assume-yes install unzip
apt-get --assume-yes install libboost-all-dev
cd installation_scripts/
./part1.bash |& tee part1.log
./part2.bash |& tee part2.log
./part3.bash |& tee part3.log
./part4.bash |& tee part4.log
./part5.bash |& tee part5.log
apt-get --assume-yes install python-gdal
ln /dev/null /dev/raw1394
apt-get --assume-yes install libsm6
mv mvs-stereo-code-samples/build/src/get-crop-area ../../lib_exec/get-crop-area
cd ..
