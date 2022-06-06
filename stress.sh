#!/bin/bash

function site() {
	siege --quiet -g https://webbackhml.azurewebsites.net
	if [ $? -eq 0 ] ; then
		echo "Success"
	else
		echo "Failure"
	fi
}

while true; do
	site
	sleep 1
done