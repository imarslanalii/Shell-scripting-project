#!/bin/bash


##################
# Author: Arslan
# Date: 15 May
#
# Version: v1
#
# This script will report the aws resource usage
##################

set -x

#AWS s3
#AWS EC2
#AWS Lamda
#AWS IAM users

#list s3 bucket
echo "Print list of s3 buckets"
aws s3 ls

#aws EC2 instances
echo "Print list of ec2 buckets"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lamda
echo "Print list of lambda functions"
aws lambda list-functions

#list IAM users
echo "Print list of IAM Userss"
aws iam list-users
