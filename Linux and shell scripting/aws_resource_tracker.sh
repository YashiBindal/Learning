#!/bin/bash
##Author: Yashi
##Date: 06-09-2024
##this script will report aws resource usage
#
##aws s3
##aws EC2
##aws lambda
##aws IAM users
#
set -ex

#Date and time at the running of the script
echo “Cron job ran at $(date)”
##list s3 buckets
echo "S3 list"
aws s3 ls
#
##list EC2 instances
## aws ec2 describe-instances
echo "EC2 instance"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
#jq is json parser, yq is yaml parser
##list was lambda
echo "lambda functions"
aws lambda list-functions
#
##list IAM users
echo "IAM users"
aws iam list-users


###Below commands to run a cron job every day
# chmod 777 aws_resource_tracker.sh
# Here is how to integrate the modified script with a cron job ::
# 1. install crontab
# sudo yum install cronie cronie-anacron
# 2. Open the crontab configuration by running:
# crontab -e
# 3. Add the following line to the crontab file:
# 0 20 * * * /path to your script.sh 
# (Replace /path to script.sh with the actual path of your script)
# The cron job entry 0 20 * * * specifies that the script will run at 20:00 (8:00 PM) every day.
# 4. Save and exit the crontab editor.