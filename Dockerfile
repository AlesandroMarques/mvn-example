FROM maven:3-alpine
RUN mkdir -p /usr/src/mvn-example
COPY . /usr/src/mvn-example
WORKDIR /usr/src/mvn-example

RUN mvn clean package

ENTRYPOINT java -jar ./target/mvn-example-1.0-SNAPSHOT-jar-with-dependencies.jar