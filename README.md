# Lab Week 3 – AWS CLI

This repo contains AWS CLI scripts for Lab Week 3.  
Each script is linked to the relevant AWS CLI Command Reference documentation.

---

## Script 1 – Import Key Pair
**File:** `script1-import-key.sh`  
**Description:** Imports a locally created public key into AWS as `bcitkey`.  

- Documentation: [import-key-pair](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/import-key-pair.html)

---

## Script 2 – Create S3 Bucket
**File:** `script2-create-bucket.sh`  
**Description:** Creates a new S3 bucket in the `us-west-2` region.  

- Documentation: [create-bucket](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3api/create-bucket.html)
- Documentation: [delete-bucket](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3api/delete-bucket.html)

---

## Script 3 – Create VPC
**File:** `script3-create-vpc.sh`  
**Description:** Creates a new VPC using provided configuration.  

- Documentation: [create-vpc](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/create-vpc.html)

---

## Script 4 – Create EC2 Instance
**File:** `script4-create-ec2.sh`  
**Description:** Launches an EC2 instance using the Debian AMI, a provided security group, and the `bcitkey` key pair. Writes the instance public IP to `instance_data`.  

- Documentation: [run-instances](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/run-instances.html)
- Documentation: [describe-instances](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/describe-instances.html)

---

## Notes
- Ensure AWS CLI is configured with valid credentials before running.  
- Replace variables (e.g., AMI ID, Security Group ID, Bucket Name) as needed.
- Test SSH connection:  
  ```bash
  ssh -i mykey.pem admin@<public-ip>
