#! /bin/bash

# set PATH
PATH=/opt/someApp/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# get the quote data in `quote.json` file
curl -X GET "https://quotes.rest/qod" -H  "accept: application/json" -H  "content-type: application/json" | jq '.contents.quotes[0]' > /home/manthan/shell_scripting/quote.json

# get quote & author from the file
quote=$(jq .quote /home/manthan/shell_scripting/quote.json)
author=$(jq .author /home/manthan/shell_scripting/quote.json)

# create a notification
notify-send "By $author" "$quote" -u critical
