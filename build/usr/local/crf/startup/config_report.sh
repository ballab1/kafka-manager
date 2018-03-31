#!/bin/bash 

echo "APPLICATION_SECRET:         ${APPLICATION_SECRET}"
echo "KM_HTTP_CONTEXT:            ${KM_HTTP_CONTEXT}"
echo "ZK_HOSTS:                   ${ZK_HOSTS}"
echo "BASE_ZK_PATH:               ${BASE_ZK_PATH}"
echo "KAFKA_MANAGER_LOGLEVEL:     ${KAFKA_MANAGER_LOGLEVEL}"
echo "KAFKA_MANAGER_AUTH_ENABLED: ${KAFKA_MANAGER_AUTH_ENABLED}"
echo "KAFKA_MANAGER_USERNAME:     ${KAFKA_MANAGER_USERNAME}"
echo "KAFKA_MANAGER_PASSWORD:     ${KAFKA_MANAGER_PASSWORD}"
echo "CONSUMER_PROPERTIES_FILE:   ${CONSUMER_PROPERTIES_FILE}"

cat "$KM_CONFIGFILE"
echo ''
env | sort
