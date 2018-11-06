#!/bin/bash
#
# Generate Grafana Auth Token for Browser
# Author: Kurt McIntyre
#
source gnocchi.rc

sudo curl -v -s -X POST $OS_AUTH_URL/auth/tokens?nocatalog   -H "Content-Type: application/json"   -d '{ "auth": { "identity": { "methods": ["password"],"password": {"user": {"domain": {"name": "'"$OS_USER_DOMAIN_NAME"'"},"name": "'"$OS_USERNAME"'", "password": "'"$OS_PASSWORD"'"} } }, "scope": { "project": { "domain": { "name": "'"$OS_PROJECT_DOMAIN_NAME"'" }, "name":  "'"$OS_TENANT_NAME"'" } } }}' | python -m json.tool

