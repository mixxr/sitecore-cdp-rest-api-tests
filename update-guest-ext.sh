# POST: https://apiEndpoint/v2/guests/guestRef/extdataExtensionName/dataExtensionRef
# eg. ./update-guest-ext.sh b366acee-cc56-4290-8cbe-b40b0a007046 Spending/0605abad-e2ae-516b-8188-6cc016128559
curl -i 'https://api.boxever.com/v2/guests/'$1/ext$2 -X POST -u $3:$4 --header 'Content-Type: application/json' \
  --data-raw '{
      "key": "budgets",
    "sport": "1800",
    "travels": "6000",
    "currency": "USD"
}'