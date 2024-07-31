set -euxo pipefail

cd platform/rp2040/make
rm -rf build
mingw32-make XIAO=1
cp build/*.uf2 ../../../
cd ../../..

cd platform/samd21/make
rm -rf build
mingw32-make -f Makefile_8kbl XIAO=1
cp build/*.bin ../../../
cd ../../..
