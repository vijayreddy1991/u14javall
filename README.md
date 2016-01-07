u14javall
===============

Shippable CI image for Java on Ubuntu 14.04. Available jdk versions:

1. openjdk6
2. openjdk7
3. oraclejdk7
4. oraclejdk8

## Services:

1. cassandra 2.1
2. elasticsearch 1.5
3. memcached 1.4
4. mongodb 3.0
5. mysql 5.6
6. neo4j 2.2
7. postgres 9.4
8. rabbitmq 3.5
9. redis 3.0
10. selenium 2.45
11. sqllite 3
12. couchdb 1.6
13. rethinkdb 2.0
14. riak latest

## How to use
You can use this image to run java builds on Shippable. Update your shippable.yml file with build_image tag and activate jdk in before_script section to run your build against the correct version. You can use `$SHIPPABLE_JDK_VERSION` environment
variable to specify jdk versions. Here's a sample YML file to get you going:

````
language: java
jdk:
   - openjdk6
   - openjdk7
   - oraclejdk7
   - oraclejdk8

build_image: drydock/u14javall:prod

before_install:
   - apt-get install -y maven

before_script:
   - if [[ $SHIPPABLE_JDK_VERSION == "openjdk7" ]] ; then export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64"; export PATH="$PATH:/usr/lib/jvm/java-7-openjdk-amd64/bin"; export java_path="/usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java"; fi
   - if [[ $SHIPPABLE_JDK_VERSION == "oraclejdk7" ]] ; then export JAVA_HOME="/usr/lib/jvm/java-7-oracle"; export PATH="$PATH:/usr/lib/jvm/java-7-oracle/bin"; export java_path="/usr/lib/jvm/java-7-oracle/jre/bin/java"; fi
   - if [[ $SHIPPABLE_JDK_VERSION == "openjdk6" ]] ; then export JAVA_HOME="/usr/lib/jvm/java-6-openjdk-amd64"; export PATH="$PATH:/usr/lib/jvm/java-6-openjdk-amd64/bin"; export java_path="/usr/lib/jvm/java-6-openjdk-amd64/jre/bin/java"; fi
   - if [[ $SHIPPABLE_JDK_VERSION == "oraclejdk8" ]] ; then export JAVA_HOME="/usr/lib/jvm/java-8-oracle"; export PATH="$PATH:/usr/lib/jvm/java-8-oracle/bin"; export java_path="/usr/lib/jvm/java-8-oracle/jre/bin/java"; fi
   - update-alternatives --set java $java_path
   - java -version

script:
   - mvn test

````
