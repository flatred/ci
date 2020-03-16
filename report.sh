#!/bin/sh

set -eux

CITY1="厦门"
CITY2="深圳"
CITY3="杭州"
LANGUAGE="zh-CN"
FORMAT="%l:+%c+%t+%w+%m"
UNIT=m
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36"

curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  wttr.in/$CITY1?format=4\&$UNIT > report.html

curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  wttr.in/$CITY2?format=4\&$UNIT >> report.html

curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  wttr.in/$CITY3?format=4\&$UNIT >> report.html
