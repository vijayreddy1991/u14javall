#!/bin/bash -e

sudo apt-get clean
sudo mv /var/lib/apt/lists /tmp
sudo mkdir -p /var/lib/apt/lists/partial
sudo apt-get clean
sudo apt-get update

echo "================ Installing gradle ================="
sudo wget https://services.gradle.org/distributions/gradle-2.3-all.zip
unzip -qq gradle-2.3-all.zip -d /usr/local && rm -f gradle-2.3-all.zip
ln -fs /usr/local/gradle-2.3/bin/gradle /usr/bin
echo 'export PATH=$PATH:/usr/local/gradle-2.3/bin' >> $HOME/.bashrc

echo "================ Installing apache-maven-3.2.5 ================="
sudo wget http://mirrors.ibiblio.org/apache/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz
sudo tar xzf apache-maven-3.2.5-bin.tar.gz -C /usr/local && rm -f apache-maven-3.2.5-bin.tar.gz
ln -fs /usr/local/apache-maven-3.2.5/bin/mvn /usr/bin
echo 'export PATH=$PATH:/usr/local/apache-maven-3.2.5/bin' >> $HOME/.bashrc

echo "================ Installing apache-ant-1.9.6 ================="
wget http://mirror.cogentco.com/pub/apache//ant/binaries/apache-ant-1.9.6-bin.tar.gz
tar xzf apache-ant-1.9.6-bin.tar.gz -C /usr/local && rm -f apache-ant-1.9.6-bin.tar.gz
ln -fs /usr/local/apache-ant-1.9.6/bin/ant /usr/bin
echo 'export ANT_HOME=/usr/local/apache-ant-1.9.6' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/local/apache-ant-1.9.6/bin' >> $HOME/.bashrc

for file in /u14javall/version/*;
do
  $file
done

