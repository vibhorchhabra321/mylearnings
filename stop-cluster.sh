#!/bin/bash

  aws ec2 stop-instances --instance-ids $(aws resource-groups list-group-resources --group-name $1 | grep ResourceArn | cut -d "/" -f 2 | tr '\n' ' ' | sed -r 's/",/ /g')  
