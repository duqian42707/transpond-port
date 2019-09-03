#!/bin/sh

echo 'replace start'
sed -i "s/\${HOST_IP}/${HOST_IP}/" /opt/config.properties
sed -i "s/\${HOST_PORT}/${HOST_PORT}/" /opt/config.properties
sed -i "s/\${HOST_USER}/${HOST_USER}/" /opt/config.properties
sed -i "s/\${HOST_PASS}/${HOST_PASS}/" /opt/config.properties

jar -uvf transpond.jar config.properties
echo 'replace end'
