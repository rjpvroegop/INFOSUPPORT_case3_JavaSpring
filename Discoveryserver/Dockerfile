FROM java:8

COPY target/discoveryserver.jar discoveryserver.jar

CMD java -Dserver.port=10000 -jar discoveryserver.jar

EXPOSE 10000