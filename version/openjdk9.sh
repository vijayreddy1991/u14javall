#!/bin/bash -e

echo "================ Installing openjava9-installer ================="

cd /usr/lib/jvm
wget http://download.java.net/java/GA/jdk9/9.0.1/binaries/openjdk-9.0.1_linux-x64_bin.tar.gz
tar -xzf openjdk-9.0.1_linux-x64_bin.tar.gz
mv jdk-9.0.1 java-9-openjdk-amd64
update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-9-openjdk-amd64/bin/java 1
update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/java-9-openjdk-amd64/bin/javac 1
