#!/bin/bash

KIBANA_URL="https://192.168.97.54:30001"
KIBANA_USER="elastic"
KIBANA_PASSWORD="tacoword"

echo "trying to setting KIBANA ${KIBANA_URL}..."
curl -k -u ${KIBANA_USER}:${KIBANA_PASSWORD} \
-X POST "${KIBANA_URL}/api/saved_objects/_import"  \
-H "kbn-xsrf: true" --form file=@kibana_settings.ndjson
echo "DONE."
