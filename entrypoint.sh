#!/bin/bash

set -e

if [ "$#" -eq  "0" ]; then
	squid -NYCd 1
else
	"$@"
fi
