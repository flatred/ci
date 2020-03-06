#!/bin/sh

set -eux

CITY=Hangzhou
LANGUAGE="zh-CN"
FORMAT="%l:+%c+%t+%w+%m"
UNIT=m
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36"

curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o hangzhou.html \
  wttr.in/$CITY?format=4\&$UNIT
