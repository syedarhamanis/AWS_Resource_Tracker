#!/bin/bash

######################################################

# Author: Syed Arham Anis
# Date: 11/08/2025

# This project is  track the AWS Resources

# Version: v1

#####################################################


set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users
 
# List S3 Buckets

echo "Print the S3 Buckets"

aws s3 ls

# List EC2 Instances

echo "Print the EC2 Instances"

aws ec2 describe-instances | jq 'Reservations[].Instances[].VolumeId'

# List the Lambda functions

echo "Print the Lambda Function"

aws lambda list-functions

# List the IAM Users

echo "Print IAM Users"

aws iam list-users

