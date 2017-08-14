#!/bin/bash

# export CFLAGS="--sysroot=/home/cristina/iij/android-ndk-r15b/tmp-toolchain/sysroot/usr/include -I/home/cristina/iij/android-ndk-r15b/tmp-toolchain/sysroot/usr/include"

# export LDFLAGS="-L/home/cristina/iij/android-ndk-r15b/tmp-toolchain/sysroot/usr/lib -pie"

export CROSS_COMPILE=arm-linux-androideabi-

# Manually include sysroot

# export SYSROOTDIR=/home/cristina/iij/android-ndk-r15b/tmp-toolchain/sysroot
# export CFLAGS="-I$SYSROOTDIR/usr/include"
# export LDFLAGS="-L$SYSROOTDIR/usr/lib -L/home/cristina/iij/android-ndk-r15b/apps/iperf/iperf-bin"


# Copy headers in ./include
# Manually include local headers

IPERF_HOME=/home/cristina/iij/android-ndk-r15b/apps/iperf

export CFLAGS="-I$IPERF_HOME/include"
echo $CFLAGS
export LDFLAGS="-L$IPERF_HOME/lib -L$IPERF_HOME/iperf-bin/lib -L$IPERF_HOME/iperf-bin/ -L$IPERF_HOME -L$IPERF_HOME/src -pie"
echo $LDFLAGS



./configure --host=arm-linux-androideabi --host=arm-linux-androideabi --prefix=/home/cristina/iij/android-ndk-r15b/apps/iperf/iperf-bin/lib --with-sysroot=/home/cristina/iij/android-ndk-r15b/tmp-toolchain/sysroot

# ./configure --host=arm-none-linux-androideabi -prefix=/home/cristina/iij/android-ndk-r15b/apps/iperf/iperf-bin/ --with-sysroot=/home/cristina/iij/android-ndk-r15b/tmp-toolchain/sysroot && 


#make CFLAGS=-static CXXFLAGS=-static
