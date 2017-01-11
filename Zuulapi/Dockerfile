FROM java:8

COPY target/zuul-api.jar zuul-api.jar

CMD java -Dserver.port=10001 -Dmanagement.port=10002 -Deureka.client.service-url.defaultZone=http://$EUREKA_SERVER/eureka -Deureka.instance.prefer-ip-address=true -Deureka.instance.ip-address=$HOST_IP_ADRESS  -Deureka.instance.non-secure-port=$HOST_PORT -jar zuul-api.jar

EXPOSE 10001 10002