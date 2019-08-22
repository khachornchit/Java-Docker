FROM alpine
WORKDIR /root/core
COPY Hi.java /root/core

RUN apk add openjdk8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

# Compile
RUN javac Hi.java

ENTRYPOINT java Hi