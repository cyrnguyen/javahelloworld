FROM java:8
MAINTAINER Cyril Nguyen <cyril.nguyen@gmail.com>
ENV FOO bar
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin && javac -d bin src/HelloWorld.java
RUN apt-get update && apt-get install wget
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

