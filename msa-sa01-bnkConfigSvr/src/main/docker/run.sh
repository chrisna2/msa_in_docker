#!/bin/sh
getPort() {
    echo $1 | cut -d : -f 3 | xargs basename
}

echo "********************************************************"
echo "Waiting for the eureka server to start on port $(getPort $BNKREGSERVER_PORT)"
echo "********************************************************"
while ! `nc -z bnkregserver  $(getPort $BNKREGSERVER_PORT)`; do sleep 3; done
echo "******* Eureka Server has started"

echo "********************************************************"
echo "Starting Configuration Service with Eureka Endpoint:  $BNKREGSERVER_URI";
echo "********************************************************"
java -Djava.security.egd=file:/dev/./urandom -Deureka.client.serviceUrl.defaultZone=$BNKREGSERVER_URI -jar /usr/local/bnkConfigSvr/@project.build.finalName@.jar
