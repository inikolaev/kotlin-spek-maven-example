FROM anapsix/alpine-java:jdk8

ENV MAVEN_VERSION 3.5.0
ENV MAVEN_HOME /usr/local/maven

RUN cd /tmp \
    && wget http://www.nic.funet.fi/pub/mirrors/apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
    && tar -zxvf apache-maven-${MAVEN_VERSION}-bin.tar.gz \
    && mv apache-maven-${MAVEN_VERSION} ${MAVEN_HOME} \ 
    && rm apache-maven-${MAVEN_VERSION}-bin.tar.gz \
    && rm -rf apache-maven-${MAVEN_VERSION} \
    && unset MAVEN_VERSION

ENV PATH ${PATH}:${MAVEN_HOME}/bin
