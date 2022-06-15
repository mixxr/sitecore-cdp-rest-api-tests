# DELETE: https://apiEndpoint/v2/guests/guestRef/extdataExtensionName/dataExtensionRef
# eg. ./delete-ext-guest.sh b366acee-cc56-4290-8cbe-b40b0a007046 ext/16f262c1-9f44-5e26-ad30-e53d98aa7d56
curl -i 'https://api.boxever.com/v2/guests/'$1/ext$2 -X DELETE -u $3:$4 --header 'Content-Type: application/json' 