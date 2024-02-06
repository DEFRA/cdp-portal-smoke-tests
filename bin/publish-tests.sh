#!/bin/bash

DIRECTORY=./allure-report

if [ -n "$RESULTS_OUTPUT_S3_PATH" ]; then
   if [ -d "$DIRECTORY" ]; then
      aws s3 cp "$DIRECTORY" "$RESULTS_OUTPUT_S3_PATH" --recursive
   else
      echo "$DIRECTORY is not found"
      exit 1
   fi
else
   echo "RESULTS_OUTPUT_S3_PATH is not set"
   exit 1
fi
