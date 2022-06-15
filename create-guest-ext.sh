# POST: https://apiEndpoint/v2/guest/extdataExtensionName
# eg. ./create-guest-ext.sh b366acee-cc56-4290-8cbe-b40b0a007046 Spending
curl -i 'https://api.boxever.com/v2/guests/'$1/ext$2 -X POST -u $3:$4 --header 'Content-Type: application/json' \
  --data-raw '{
      "key": "budgets",
    "sport": "1800",
    "travels": "3000",
    "currency": "EUR"
}'