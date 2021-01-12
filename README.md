# youtube-channel-id-finder

Extract the youtube channel id from a custom channel name url.

```text
// Custom channel name
https://www.youtube.com/c/GMHikaru
// Channel id
https://www.youtube.com/channel/UCweCc7bSMX5J4jEH7HFImng
```

# Dependencies

- curl: https://curl.se/dlwiz/?type=bin
- xmllint: http://xmlsoft.org/xmllint.html

# Usage

1. move `script.sh` to a chosen location
2. set execution permission to the script with `chmod -x PATH_TO_SCRIPT/script.sh`
3. run `PATH_TO_SCRIPT/script.sh YOUTUBE_CUSTOM_CHANNEL_URL`

# Example

```sh
$ script.sh https://www.youtube.com/c/GMHikaru
UCweCc7bSMX5J4jEH7HFImng
```
