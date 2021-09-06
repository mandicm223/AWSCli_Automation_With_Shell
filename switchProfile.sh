#!/bin/bash

function sp () {
    if [ $# -eq 0 ]; then
        echo "Abortimg: 1 profile name argument is required."; return 1
    elif ! grep -q "$1" ~/.aws/config; then
        echo "Aborting: $1 is not configured as an AWS profile."; return 1
    else
        export AWS_PROFILE="$1"
        echo 'AWS_PROFILE ==' $AWS_PROFILE
    fi
}   