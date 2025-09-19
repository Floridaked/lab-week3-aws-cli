#!/bin/bash
# Script 1 - Import public key to AWS

aws ec2 import-key-pair \
  --key-name "bcitkey" \
  --public-key-material fileb://~/.ssh/bcitkey.pub
