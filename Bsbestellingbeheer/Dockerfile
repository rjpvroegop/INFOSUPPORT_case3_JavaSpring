FROM java:8

COPY target/bsbestellingbeheer.jar bsbestellingbeheer.jar

CMD java -Dserver.port=10007 -Deureka.client.service-url.defaultZone=http://$EUREKA_SERVER/eureka -Deureka.instance.prefer-ip-address=true -Deureka.instance.ip-address=$HOST_IP_ADRESS  -Deureka.instance.non-secure-port=$HOST_PORT -jar bsbestellingbeheer.jar

EXPOSE 10007