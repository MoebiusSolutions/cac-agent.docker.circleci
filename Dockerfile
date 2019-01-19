FROM circleci/openjdk:11-jdk

USER root

# Download JDK 8
RUN wget -q https://download.java.net/openjdk/jdk8u40/ri/jdk_ri-8u40-b25-linux-x64-10_feb_2015.tar.gz && \
    tar -xvzf jdk_ri-8u40-b25-linux-x64-10_feb_2015.tar.gz

USER circleci

# Setup varialbes needed by cac-agent build
ENV JDK_11_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV JDK_8_HOME=/java-se-8u40-ri

