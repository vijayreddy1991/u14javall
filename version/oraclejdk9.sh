#!/bin/bash -e

echo "================ Installing oracle-java9-installer ================="
echo oracle-java9-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
add-apt-repository -y ppa:webupd8team/java
apt-get update
apt-get install -y oracle-java9-installer
update-alternatives --set java /usr/lib/jvm/java-9-oracle/bin/java
update-alternatives --set javac /usr/lib/jvm/java-9-oracle/bin/javac
update-alternatives --set javaws /usr/lib/jvm/java-9-oracle/bin/javaws
echo 'export JAVA_HOME=/usr/lib/jvm/java-9-oracle' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/lib/jvm/java-9-oracle/bin' >> $HOME/.bashrc
