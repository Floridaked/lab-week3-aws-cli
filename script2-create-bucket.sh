#!/bin/bash
# Script 2 - Create S3 bucket in us-west-2
# Usage: ./script2-create-bucket.sh <name>

aws s3api create-bucket \
  --bucket $1 \
  --region us-west-2 \
  --create-bucket-configuration LocationConstraint=us-west-2
