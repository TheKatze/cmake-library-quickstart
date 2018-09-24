pushd build

cmake -GNinja ..

ninja

cp src/shvrdengine/libshvrdengine.a ../out
cp src/example/shvrdengine_example ../out
cp test/shvrdengine_test ../out

popd

doxygen Doxyfile