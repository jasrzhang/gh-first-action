#!/bin/bash

# Define variables
TENANT="shuruihrad"
POLICY="B2C_1_testflow"
CLIENT_ID="01f94e14-ef3e-44f7-87bb-2ec5276713dc"
CLIENT_SECRET="7Wg8Q~h6_Ny~QTjpAIQ7Qp6RItge2SyDqg5SScWF"
API_ID_URI="https://shuruihrad.onmicrosoft.com/5ae98d4a-3924-475d-aa36-71b012a1e8f0"

# Use variables in the curl request
response=$(curl -v --location --request POST "https://${TENANT}.b2clogin.com/${TENANT}.onmicrosoft.com/${POLICY}/oauth2/v2.0/token" \
--header "Content-Type: application/x-www-form-urlencoded" \
--data-urlencode "grant_type=client_credentials" \
--data-urlencode "client_id=${CLIENT_ID}" \
--data-urlencode "client_secret=${CLIENT_SECRET}" \
--data-urlencode "scope=${API_ID_URI}/.default")

echo "$response"
