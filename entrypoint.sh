#!/bin/sh

npm test
test_exit_code=$?

#Add delay for testing
sleep 300

npm run report:publish
publish_exit_code=$?

if [ $publish_exit_code -ne 0 ]; then
  echo "failed to publish test results"
  exit $publish_exit_code
fi

exit $test_exit_code
