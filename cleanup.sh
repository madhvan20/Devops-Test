#!/bin/bash
# cleanup.sh - cleanup the CloudFormation stack and the CodeDeploy
#   application after a successful or failed test.
#   Cleanup removes all stack and CodeDeploy resources
echo "Starting cleanup of old resources"
# Clean up any previous CloudFormation stack 
aws cloudformation delete-stack --stack-name "cdtutorialStack"
# Clean up any previous CodeDeploy artifacts 
aws deploy delete-application --application-name cdtutorialMyApp
echo "Sleeping 3 minutes to allow time for cleanup to complete"
sleep 180
echo "End of cleanup script"

