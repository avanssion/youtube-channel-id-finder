#!/bin/bash
# youtube-channel-id-finder, version 1

URL=$1
if [[ -z "$URL" ]]; then
    echo "Error: Missing url"
else
# 0. curl the youtube channel page and store the HTML in tmp.html
    curl -s $URL > tmp.html
# 1. extract the `<meta property="og:url" content="https://www.youtube.com/channel/:channelId">`
    META=$(xmllint --html --xpath \
        'string(//meta[@property="og:url"]/@content)' \
        2>/dev/null \
        tmp.html)
# 2. remove tmp.html
    rm tmp.html
# 3. echo the channel id
    echo ${META##*/}
fi
exit
