#!/usr/bin/env bash -x

sed -i.bak -r \
    -e 's/"index\.pl\?([A-Za-z0-9]+)/"\1.html/g' \
    -e 's/"index.pl"/"FrontPage.html"/g' \
    raw/*.html
