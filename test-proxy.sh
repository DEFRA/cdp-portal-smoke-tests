#!/bin/sh
echo "testing proxy https://$SQUID_USERNAME:*****@proxy.$ENVIRONMENT.cdp-int.defra.cloud"
echo "testing browserstack"
curl -v -x "https://$SQUID_USERNAME:$SQUID_PASSWORD@proxy.$ENVIRONMENT.cdp-int.defra.cloud" "https://hub.browserstack.com"
echo "testing github"
curl -v -x "https://$SQUID_USERNAME:$SQUID_PASSWORD@proxy.$ENVIRONMENT.cdp-int.defra.cloud" "https://api.github.com"
