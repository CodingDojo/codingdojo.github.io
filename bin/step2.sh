#!/usr/bin/env bash -x

for f in raw/*.pl*; do
    mv $f ${f/index\.pl\?/}.html
done
