
#!/usr/bin/env bash
mkdir build
cd build
# Make libraries
cmake -G "Ninja" \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_PREFIX_PATH=${PREFIX} \
      -DCMAKE_INSTALL_PREFIX:PATH=${PREFIX} \
      -DEigen3_INCLUDE_DIR:PATH=${PREFIX}\include\eigen3 \
      ${SRC_DIR}

ninja install

