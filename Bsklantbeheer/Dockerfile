FROM java:8

COPY target/bsklantbeheer.jar bsklantbeheer.jar

CMD java -Dserver.port=10005 -Deureka.client.service-url.defaultZone=http://$EUREKA_SERVER/eureka -Deureka.instance.prefer-ip-address=true -Deureka.instance.ip-address=$HOST_IP_ADRESS  -Deureka.instance.non-secure-port=$HOST_PORT -jar bsklantbeheer.jar

EXPOSE 10005