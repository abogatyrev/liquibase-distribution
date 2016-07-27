# Run command example:
# > /opt/liquibase/liquid-update.sh /opt/liquibase/example/liquibase.properties

#!/bin/bash

LIQUIBAE_PROPERY_FILE_PATH=$1 # example: /opt/liquibase/example/liquibase.properties

if [[ ! -f ${LIQUIBAE_PROPERY_FILE_PATH} ]]; then
  echo "(!) Cannot find Liquibase property file."
  echo "Run command example:"
  echo "> /opt/liquibase/liquid-update.sh /opt/liquibase/example/liquibase.properties"
  exit 1
fi

java -jar /opt/liquibase/libs/liquibase.jar --defaultsFile=${LIQUIBAE_PROPERY_FILE_PATH} update