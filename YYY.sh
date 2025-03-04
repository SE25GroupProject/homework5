#!/bin/sh
tr -d '^\n' | sed 's/ /\n/g' | sort | uniq -c 