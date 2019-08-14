#!/bin/sh
echo "********************************************************"
echo "Waiting for the eureka server to start on port $BNKREGSERVER_PORT"
echo "********************************************************"
while ! `nc -z bnkregserver $BNKREGSERVER_PORT`; do sleep 3; done
echo "******* Eureka Server has started"


echo "********************************************************"
echo "Waiting for the MARIADB database server to start on port $MARIADB_PORT"
echo "********************************************************"
while ! `nc -z mariadb $MARIADB_PORT`; do sleep 3; done
echo "******** MARIADB Server has started "

echo "********************************************************"
echo "Waiting for the configuration server to start on port $BNKCONFIGSVR_PORT"
echo "********************************************************"
while ! `nc -z bnkconfigsvr $BNKCONFIGSVR_PORT`; do sleep 3; done
echo "*******  Configuration Server has started"


echo "********************************************************"
echo "Starting Authentication Service                           "
echo "********************************************************"
java -Djava.security.egd=file:/dev/./urandom -Dserver.port=$SERVER_PORT   \
     -Deureka.client.service-url.defaultZone=$BNKREGSERVER_URI             \
     -Dspring.cloud.config.uri=$BNKCONFIGSVR_URI                          \
     -Dspring.profiles.active=$PROFILE                                   \
     -jar /usr/local/bnkauthserver/@project.build.finalName@.jar
