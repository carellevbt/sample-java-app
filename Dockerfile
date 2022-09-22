FROM openjdk:jdk

RUN mkdir /app

COPY ./target/sample-0.0.1-SNAPSHOT.jar /app

WORKDIR /app

CMD ("java" "-jar" "./target/sample-0.0.1-SNAPSHOT.jar")