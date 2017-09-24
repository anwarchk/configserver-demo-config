#!/usr/bin/env bash

TOKEN=$(curl -k "<ACCESS_TOKEN_URI>" -u <CLIENT_ID>:<CLIENT_SECRET> -d "grant_type=client_credentials" | jq -r .access_token);

curl -k -H "Authorization: bearer $TOKEN" -H "Accept: application/json" "<CONFIG_SERVER_INSTANCE/<APPNAME>/<PROFILE>" | jq

