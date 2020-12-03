#!/bin/bash
set -e
aws cloudformation deploy --template-file pipeline.yaml --stack-name codepipeline-newapi \
  #--parameter-overrides $(cat ci/parameters.properties) \
  --role-arn arn:aws:iam::749144762306:role/Cloudformation-role12 \
  --capabilities CAPABILITY_IAM \
  --region eu-west-1