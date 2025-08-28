#!/bin/bash
a="vansh"
b=40

if [ $a="vansh" ] && [ $b -gt 18 ]; then
    echo " you are adult "
fi

if [ $a=" akshat" ] && [ $b -lt 18 ]; then
    echo "you are minor"
fi
