apt-get --assume-yes install python-numpy python-scipy python-matplotlib

apt-get --assume-yes install build-essential
apt-get --assume-yes install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
apt-get --assume-yes install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev python-pip

apt-get --assume-yes install git
cd ~
mkdir opencv
cd opencv
git clone https://github.com/Itseez/opencv.git
git clone https://github.com/Itseez/opencv_contrib.git
cd opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D INSTALL_C_EXAMPLES=ON \
	-D INSTALL_PYTHON_EXAMPLES=ON \
	-D OPENCV_EXTRA_MODULES_PATH=~/opencv/opencv_contrib/modules \
	-D BUILD_EXAMPLES=ON \
	..

cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D INSTALL_C_EXAMPLES=ON \
	-D INSTALL_PYTHON_EXAMPLES=ON \
	-D OPENCV_EXTRA_MODULES_PATH=~/opencv/opencv_contrib/modules \
	-D BUILD_EXAMPLES=ON \
	-D WITH_FFMPEG=OFF \
	-D BUILD_SHARED_LIBS=OFF ..

#cmake -D CMAKE_BUILD_TYPE=RELEASE \
#	-D CMAKE_INSTALL_PREFIX=/usr/local \
#	-D INSTALL_C_EXAMPLES=ON \
#	-D INSTALL_PYTHON_EXAMPLES=ON \
#	-D OPENCV_EXTRA_MODULES_PATH=~/opencv/opencv_contrib/modules \
#	-D BUILD_EXAMPLES=ON \
#	-D WITH_QT=ON \
#	-D WITH_OPENGL=ON \
#	-D ENABLE_FAST_MATH=1 \
#	-D CUDA_FAST_MATH=1 \
#	-D WITH_CUBLAS=1 \
#	..
make -j4
make install
ldconfig
ln /dev/null /dev/raw1394

pip install scikit-learn
pip install cython
pip install scikit-image

apt-get --assume-yes install libopenexr-dev
pip install openexr
pip install pyproj
pip install fastkml
pip install numpy --upgrade
