#!/bin/bash
# Script 3 - Create a VPC

aws ec2 create-vpc \
  --cidr-block 10.0.0.0/16
