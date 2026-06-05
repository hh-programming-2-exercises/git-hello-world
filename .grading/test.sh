#!/usr/bin/env bash

if ! cat hello.txt | tr '[:upper:]' '[:lower:]' | grep -q 'hello world'; then
    echo "The hello.txt file should contain the text \"hello world\"."
	exit 1
fi
