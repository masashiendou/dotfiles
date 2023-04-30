MAC=04:20:9A:45:C0:D0
echo -e $(echo $(printf 'f%.0s' {1..12}; printf "$(echo $MAC | sed 's/://g')%.0s" {1..16}) | sed -e 's/../\\x&/g') | nc -w1 -s 192.168.41.99 -u -b 255.255.255.255 4000
