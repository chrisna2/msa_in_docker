#!/bin/sh

echo "********************************************************"
echo "Waiting for the eureka server to start on port $BNKREGSERVER_PORT"
echo "********************************************************"
while ! `nc -z bnkregserver  $BNKREGSERVER_PORT`; do sleep 3; done
echo "******* Eureka Server has started"

echo "********************************************************"
echo "Waiting for the POSTGRES database server to start on port $DATABASE_PORT"
echo "********************************************************"
while ! `nc -z postgres $POSTGRES_PORT`; do sleep 3; done
echo "******** POSTGRES Database Server has started "

echo "********************************************************"
echo "Waiting for the configuration server to start on port $BNKCONFIGSVR_PORT"
echo "********************************************************"
while ! `nc -z bnkconfigsvr $BNKCONFIGSVR_PORT`; do sleep 3; done
echo "*******  Configuration Server has started"

echo "********************************************************"
echo "Starting Concept Service                           "
echo "Concept service will use $BNKAUTHSERVER_URI for URI"
echo "********************************************************"
java -Djava.security.egd=file:/dev/./urandom -Dserver.port=$SERVER_PORT   \
     -Deureka.client.service-url.defaultZone=$BNKREGSERVER_URI             \
     -Dspring.cloud.config.uri=$BNKCONFIGSVR_URI                          \
     -Dspring.profiles.active=$PROFILE                                   \
     -Dsecurity.oauth2.resource.user-info-uri=$BNKAUTHSERVER_URI        \
     -jar /usr/local/concept/@project.build.finalName@.jar
