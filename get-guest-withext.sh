# GET: https://apiEndpoint/v2/guests/guestRef?expand=dataExtensionName
# eg. ./get-guest.sh b366acee-cc56-4290-8cbe-b40b0a007046 
curl  'https://api.boxever.com/v2/guests/'$1?expand=true -u $2:$3  