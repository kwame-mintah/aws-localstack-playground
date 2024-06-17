#!/bin/bash

awslocal cloudformation deploy \
    --stack-name cfn-resources-stack \
    --template-file "../cfn-templates/cfn-localstack-resources.yaml"
