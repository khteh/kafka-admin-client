FROM openjdk:11.0.8-jre

ENV SCALA_VERSION 2.12
ENV KAFKA_VERSION 2.5.0

RUN curl -s http://apache.mirrors.spacedump.net/kafka/"$KAFKA_VERSION"/kafka_"$SCALA_VERSION"-"$KAFKA_VERSION".tgz | tar xvz --strip-components=1
ADD kafka.properties /tmp/
WORKDIR /bin
