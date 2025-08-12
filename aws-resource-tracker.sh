#!/bin/bash

######################################################

# Author: Syed Arham Anis
# Date: 11/08/2025

# This project is to track the AWS Resources

# Version: v1

#####################################################


set -x #Debug mode

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users
 
# List S3 Buckets

echo "Print the S3 Buckets"

aws s3 ls

# List EC2 Instances

echo "Print the EC2 Instances"

 # NOTE: modify the jq filter below to extract different fields as per your requirement
 
aws ec2 describe-instances | jq 'Reservations[].Instances[].VolumeId'  # Filters output to only show volume IDs


# List the Lambda functions

echo "Print the Lambda Function"

aws lambda list-functions

# List the IAM Users

echo "Print IAM Users"

aws iam list-users

