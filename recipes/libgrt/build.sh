
cd build
mkdir release
cd release
cmake ${CMAKE_ARGS} -G "Ninja"                                            \
    -DCMAKE_BUILD_TYPE="Release"                                          \
    -DCMAKE_PREFIX_PATH=${PREFIX}                                         \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}                                      \
    -DCMAKE_INSTALL_LIBDIR="lib"                                          \
    -DPYTHON_PACKAGES_PATH=${SP_DIR}                                      \
    -DPYTHON_EXECUTABLE=${PYTHON}                                         \
    -DBUILD_EXAMPLES=OFF                                                  \
    -DBUILD_PYTHON_BINDING=OFF                                             \
    ..

ninja install -v -j${CPU_COUNT}