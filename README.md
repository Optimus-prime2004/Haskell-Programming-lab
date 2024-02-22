cd ~
git clone https://github.com/opencv/opencv.git


cd ~
git clone https://github.com/opencv/opencv_contrib.git



cd ~/opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
      -D ENABLE_NEON=ON \
      -D ENABLE_VFPV3=ON \
      -D BUILD_TESTS=OFF \
      -D INSTALL_PYTHON_EXAMPLES=OFF \
      -D OPENCV_ENABLE_NONFREE=ON \
      -D CMAKE_SHARED_LINKER_FLAGS='-latomic' \
      -D BUILD_EXAMPLES=OFF ..
make -j$(nproc)


sudo make install
sudo ldconfig


import cv2
print(cv2.__version__)
