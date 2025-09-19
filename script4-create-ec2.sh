#!/bin/bash
# Script 4 - Launch EC2 and save its IP

debian_ami="ami-xxxxxxxx"        # replace with Debian AMI
security_group_id="sg-xxxxxxxx"  # replace with SG ID

instance_id=$(aws ec2 run-instances \
  --image-id $debian_ami \
  --instance-type t2.micro \
  --key-name "bcitkey" \
  --security-group-ids $security_group_id \
  --query "Instances[0].InstanceId" \
  --output text)

aws ec2 wait instance-running --instance-ids $instance_id

aws ec2 describe-instances \
  --instance-ids $instance_id \
  --query "Reservations[0].Instances[0].PublicIpAddress" \
  --output text > instance_data

echo "Instance created. Public IP saved in instance_data."
