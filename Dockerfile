From openjdk:jdk

expose 8080

workdir /usr/sample-app

copy ./target/sample-0.0.1-SNAPSHOT.jar /usr/sample-app

CMD java -jar ./target/sample-0.0.1-SNAPSHOT.jar

