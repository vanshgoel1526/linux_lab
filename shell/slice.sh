#!/bin/bash

a=(1 2 3 4 5 6 7 8 9)
b=($(a[@]) [:1:5])
	echo "array a was {$a[@]}"
	echo "array b was {$b[@]}"

