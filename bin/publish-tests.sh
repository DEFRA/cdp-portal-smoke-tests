#!/bin/bash

DIRECTORY="$PWD/allure-report"
ls -la

echo "uploading the readme as a test"
aws s3 cp /app/README.md "$RESULTS_OUTPUT_S3_PATH/README.md"

echo "Publishing test results to S3"

if [ -n "$RESULTS_OUTPUT_S3_PATH" ]; then
   if [ -d "$DIRECTORY" ]; then
      aws s3 cp "$DIRECTORY" "$RESULTS_OUTPUT_S3_PATH" --recursive
      echo "Test results published to $RESULTS_OUTPUT_S3_PATH"
   else
      echo "$DIRECTORY is not found"
      exit 1
   fi
else
   echo "RESULTS_OUTPUT_S3_PATH is not set"
   exit 1
fi
