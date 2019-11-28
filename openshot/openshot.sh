#!/bin/bash

printf 'yes
B
$OPENSHOTUSER
$OPENSHOTPASS
$AWSKEY
$AWSSECRET
OpenShotAPIExportQueue
us-east-1

no
' | config-openshot-cloud> /var/log/config-openshot-cloud.log
