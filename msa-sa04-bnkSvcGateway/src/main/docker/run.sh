#!/bin/sh
echo "********************************************************"
echo "Waiting for the eureka server to start on port $BNKREGSERVER_PORT"
echo "********************************************************"
while ! `nc -z bnkregserver  $BNKREGSERVER_PORT`; do sleep 3; done
echo "******* Eureka Server has started"

echo "********************************************************"
echo "Waiting for the configuration server to start on port $BNKCONFIGSVR_PORT"
echo "********************************************************"
while ! `nc -z bnkconfigsvr $BNKCONFIGSVR_PORT`; do sleep 3; done
echo "*******  Configuration Server has started"

echo "********************************************************"
echo "Waiting for the ZIPKIN server to start  on port $ZIPKIN_PORT"
echo "********************************************************"
while ! `nc -z zipkin $ZIPKIN_PORT`; do sleep 10; done
echo "******* ZIPKIN has started"

echo "********************************************************"
echo "Starting Zuul Service with $BNKCONFIGSVR_URI"
echo "********************************************************"
java -Djava.security.egd=file:/dev/./urandom -Dserver.port=$SERVER_PORT   \
     -Deureka.client.service-url.defaultZone=$BNKREGSERVER_URI   \
     -Dspring.cloud.config.uri=$BNKCONFIGSVR_URI                 \
     -Dspring.profiles.active=$PROFILE                           \
     -Dspring.zipkin.baseUrl=$ZIPKIN_URI                         \
     -jar /usr/local/bnksvcgateway/@project.build.finalName@.jar
