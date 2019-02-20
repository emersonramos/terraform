#!/usr/bin/env bash
if [ -z "$1" ]
then
  echo "Usage: must pass the terraform directory"
  exit 1
fi

# Access Key and Secret Key Report
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
# Configure region
export AWS_DEFAULT_REGION=""
terraform=$PWD
PATH=$PATH:$terraform
cd $1
terraform $2
