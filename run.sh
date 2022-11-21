export PATH="/mingw64/bin:/usr/local/bin:/usr/bin:/bin:/opt/bin:/c/Windows/System32:/c/Windows:/c/Windows/System32/WindowsPowerShell/v1.0/:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"


# export PATH="/c/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v11.0/bin:$PATH"
# export PATH="/c/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v11.0/extras/CUPTI/libx64:$PATH"
export PATH="/C/Users/Administrator/Downloads/python-3.8.10-amd64-portable:/C/Users/Administrator/Downloads/python-3.8.10-amd64-portable/Scripts:$PATH"
export PATH="/C/Users/Administrator/Downloads/PortableGit/bin:$PATH"
export PATH="/C/Windows/System32:$PATH"

export JAVA_HOME="/C/Users/Administrator/Downloads/bazel-v5.3.2-msys2-mingw64-x86_64-posix-seh-rev0-8.1.0/openjdk-11.0.1_windows-x64_bin/jdk-11.0.1/bin"
# export BAZEL_SH=%ROOT%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\bin\bash

# git checkout -f v0.21.1
# export MSYS_NO_PATHCONV=1
# export MSYS2_ARG_CONV_EXCL="*"

cd /C/Users/Administrator/Downloads/PortableGit/gettext-0.21.1.tar/gettext-0.21.1 &&
pacman -S make autoconf automake libtool autogen perl bison flex patch gperf xz wget
gcc --version &&
ls &&
# ./autogen.sh &&
# read -p "sdfsd"  &&
./configure --host=x86_64-w64-mingw32 \
		CC=x86_64-w64-mingw32-gcc \
		CXX=x86_64-w64-mingw32-g++ \
		CPPFLAGS="-I/mingw64/include -Wall" \
		LDFLAGS="-L/mingw64/lib" \
		--disable-java \
		--enable-static \
		--enable-shared  \
		--disable-rpath \
		--enable-relocatable \
		--prefix="$(pwd)/123" &&
make VERBOSE=1 && make install
read -p "sdfsd"




