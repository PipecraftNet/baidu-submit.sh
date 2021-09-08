#!/usr/bin/env bash

cd $(dirname $0)
source .env

echo
echo ===========================================
echo `date`
echo ===========================================

echo SITE_URL: $SITE_URL
echo SITEMAP_URL: $SITEMAP_URL

if [ -z $SITE_URL ] \
  || [ -z $SITEMAP_URL ] \
  || [ -z $TOKEN ] ; then
  echo Needs SITE_URL, SITEMAP_URL and TOKEN.
  exit 1
fi

export SITE_URL
export TOKEN

submit() {
  FILE=$1
  echo
  echo "Submit" $FILE
  curl -H 'Content-Type:text/plain' --data-binary @${FILE} "http://data.zz.baidu.com/urls?site=$SITE_URL&token=$TOKEN"
}

echo Get sitemap $SITEMAP_URL
curl  --connect-timeout 5 -s $SITEMAP_URL | grep "<loc>" | grep -o -E "http[^<>]+" > urls.txt

# submit urls.txt
split -l 1000 urls.txt urls-

export -f submit
find . -type f -name "urls-*" -exec bash -c 'submit "$0"' {} \;

# rm -f urls*

echo Done!
