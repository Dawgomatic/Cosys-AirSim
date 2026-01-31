#!/bin/bash
set -x
set -e

# Download rpclib
if [ ! -d "external/rpclib/rpclib-2.3.1" ]; then
    echo "Downloading rpclib..."
    wget https://github.com/WouterJansen/rpclib/archive/refs/tags/v2.3.1.zip
    
    rm -rf "external/rpclib"
    mkdir -p "external/rpclib"
    unzip -q v2.3.1.zip -d external/rpclib
    rm v2.3.1.zip
fi

# Download Eigen
if [ ! -d "AirLib/deps/eigen3/Eigen" ]; then
    echo "Downloading Eigen..."
    wget -O eigen3.zip https://github.com/WouterJansen/eigen/archive/refs/tags/3.4.1r.zip
    unzip -q eigen3.zip -d temp_eigen
    mkdir -p AirLib/deps/eigen3
    mv temp_eigen/eigen*/Eigen AirLib/deps/eigen3
    rm -rf temp_eigen
    rm eigen3.zip
fi

echo "Manual setup complete."
