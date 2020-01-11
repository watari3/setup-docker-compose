#!/bin/bash

argc=$#
script_name=$0
version=$1
script_dir=$(cd $(dirname ${script_name}); pwd)

if [ ${argc} -ne 1 ]; then
	echo "Usage ${script_name} <docker-compose version>"
	exit 1
else
	curl -L https://github.com/docker/compose/releases/download/${version}/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
	chmod +x /usr/local/bin/docker-compose
fi

