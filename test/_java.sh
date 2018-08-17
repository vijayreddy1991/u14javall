#!/bin/bash -e

echo "============================ JDK versions ==============================="


shipctl jdk set openjdk7
java -version
printf "\n"

shipctl jdk set openjdk8
java -version
printf "\n"

shipctl jdk set openjdk9
java -version
printf "\n"

shipctl jdk set openjdk10
java -version
printf "\n"



shipctl jdk set oraclejdk8
java -version
printf "\n"

shipctl jdk set oraclejdk10
java -version
printf "\n"
