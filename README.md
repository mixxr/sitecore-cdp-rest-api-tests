# Test the API
Note: In the following the ID `b366acee-cc56-4290-8cbe-b40b0a007046` is just for example, use the correct one.

- retrieve a guest by email, eg:
    - ./get-guest-byemail.sh <your@email.com>
- retrieve the guest json by using the ID from the previous call, eg:
    - ./get-guest-withext.sh b366acee-cc56-4290-8cbe-b40b0a007046
- add a custom property, open the following script and change the payload in accordance with your needs, then call:
    - ./create-guest-ext.sh b366acee-cc56-4290-8cbe-b40b0a007046 Spending  
- modify the create-guest-ext.sh payload to add another property and then call again:
    - ./create-guest-ext.sh b366acee-cc56-4290-8cbe-b40b0a007046 Spending  
- if a property changes, eg. budget from 1000 becomes 1200, then modify the following script payload and then call it, eg.:
    - ./update-guest-ext.sh b366acee-cc56-4290-8cbe-b40b0a007046 Spending/04405771-0c26-5f83-8053-2580c0acbfd3
- delete a property key, if needed, eg:
    - ./delete-ext-guest.sh b366acee-cc56-4290-8cbe-b40b0a007046 Spending/04405771-0c26-5f83-8053-2580c0acbfd3

# Data Extensions
- retrieve ext: 
    - direct mode: GET https://apiEndpoint/v2/guests/guestRef/extdataExtensionName/dataExtensionRef
    - guest expanded mode: GET https://apiEndpoint/v2/guests/guestRef?expand=dataExtensionName

- add extention:
    - BATCH: only ext/default can be created. Only 1 element in the "extentions" array is allowed.
    - REST:  only 1 at time, ext name and key can be camelNotation and arbitrary values different than ext/default