From openjdk:jdk

expose 8080

Run mkdir /app

copy ./target/sample-0.0.1-SNAPSHOT.jar /app

workdir /app

cmd ("java" "-jar" "./target/sample-0.0.1-SNAPSHOT.jar")

