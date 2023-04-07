#!/bin/bash

# For this command to be ready to run, please install jq command to local if not already.

filename="ec2-describe-instances.json"
date_before="2022-04-12T13:00:00"

instance_ids=$(jq -r --arg date_before "$date_before" '.Reservations[].Instances[] | select(.LaunchTime < $date_before) | .InstanceId' "$filename")

echo "The following lists the InstanceIds launched before $date_before:"
echo "$instance_ids"
