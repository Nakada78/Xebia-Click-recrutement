#!/bin/bash

VAR=$1
TEST=`curl http://$VAR`

echo $TEST

if [ -z "$TEST" ]
then
        echo "TEST FAILLED"
else
        echo "TEST SUCCESSFUL"
fi
