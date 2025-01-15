#!/bin/bash

###########################
#Author: Apoorva
#Date: 15th-Jan

#Version: v1
#This script will report the AWS resource usage
##############################


#AWS s3
#AWS EC2
#AWS lambda
#AWS IAM users
 set -x
#Listing the buckets
echo "Print list of S3 buckets"
aws s3 ls

# List EC2 instances
echo "Print list of Ec2 instances"
 aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List AWS lambda
echo "Print list of lambda functions "
aws lambda list-functions

#list IAM users
aws iam list-users
