
#!/usr/bin/env bash
mkdir build
cd build
# Make libraries
cmake -G "Unix Makefiles" \
      -DCMAKE_BUILD_TYPE=Debug \
      -DCMAKE_PREFIX_PATH=${PREFIX} \
      -DCMAKE_INSTALL_PREFIX:PATH=${PREFIX} \
      -DWITH_QT:BOOL=OFF \
      -DWITH_OPENGL:BOOL=OFF \
      -DWITH_VTK:BOOL=OFF \
      ${SRC_DIR}

make -j${CPU_COUNT}
make install

