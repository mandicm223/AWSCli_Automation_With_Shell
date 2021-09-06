#!/bin/bash

function getidfromname() {
    id=$(aws ec2 describe-instances --filter Name=tag:Name,Values="$1" --query "Reservations[].Instances[].InstanceId" --output text)
    echo $id
}

getidfromname()