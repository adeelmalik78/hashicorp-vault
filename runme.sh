# ==== ENVIRONMENT VARIABLES ====

# Environment variables for Hashicrop Vault 
export VAULT_ADDR='http://127.0.0.1:8200'
export VAULT_TOKEN="hvs.3a7FuF0q1T6EBaLfexIYnhAE"

# Environment variables for Liquibase
export LIQUIBASE_PRO_LICENSE_KEY=hashicorp,secrets/data/LiquibaseProLicense,proLicenseKey
export LIQUIBASE_SEARCH_PATH=./,./flow-files
export LIQUIBASE_COMMAND_CHANGELOG_FILE=changelog.xml
export LIQUIBASE_HUB_MODE=off
# export LIQUIBASE_LOG_LEVEL=FINE
# export LIQUIBASE_CLASSPATH=../liquibase-4.18.0/lib

# Database-specific environment variables
export LIQUIBASE_COMMAND_URL=hashicorp,secrets/data/PP_DEV,url
export LIQUIBASE_COMMAND_USERNAME=hashicorp,secrets/data/PP_DEV,username
export LIQUIBASE_COMMAND_PASSWORD=hashicorp,secrets/data/PP_DEV,password

export FLOW_FILE="validate-changes-update-db.yaml"

export PATH=${PWD}/../../liquibase-4.21.1:${PATH}
# ==== LIQUIBASE ====
# liquibase command line
liquibase status --verbose
liquibase update-sql
# liquibase update
# liquibase history

# liquibase rollbackOneUpdate --force

# liquibase command line using flow files

# git clone git@github.com:adeelmalik78/flow-files.git
# liquibase flow --flow-file=flow-files/${FLOW_FILE}

# liquibase flow --flow-file=${FLOW_FILE}

# ./runme.sh &> output.log
# liquibase status --verbose