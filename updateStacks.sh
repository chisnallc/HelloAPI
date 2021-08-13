#!/bin/bash
# Hit the following endpoint and fill the credentials below
# https://aws-login.api.bbci.co.uk/account/749144762306/credentials

set -e
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_SESSION_TOKEN=


aws cloudformation deploy --template-file pipeline.yaml --stack-name codepipeline-newapi \
  --parameter-overrides $(cat parameters.properties) \
  --role-arn arn:aws:iam::749144762306:role/CloudformationRole-HelloAPI \
  --capabilities CAPABILITY_IAM \
  --region eu-west-1
