

#!/usr/bin/env bash
mkdir build
cd build
# Make libraries
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=${PREFIX} -DCMAKE_INSTALL_PREFIX:PATH=${PREFIX} \
      -DBoost_INCLUDE_DIR:PATH=${PREFIX}/include \
      -DWITH_TESTS:BOOL=OFF \
      ${SRC_DIR}

make -j${CPU_COUNT}
make install

