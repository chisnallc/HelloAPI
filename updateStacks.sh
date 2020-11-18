#!/bin/bash
set -e
aws cloudformation deploy \
  --template-file pipeline.yaml \
  #--parameter-overrides $(cat ci/parameters.properties) \
  --stack-name codepipeline-newapi \
  --role-arn arn:aws:iam::749144762306:role/Cloudformation-role12 \
  --capabilities CAPABILITY_IAM \
  --region eu-west-1