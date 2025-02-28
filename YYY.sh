#!/bin/sh
sed 's/ /\n/g' | sort | uniq -c 