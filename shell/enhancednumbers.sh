#!/bin/bash
# Modified script: enhanced_numbers.sh

# Prompt user for inputs
read -p "Enter the start value: " start
read -p "Enter the end value: " end
read -p "Enter the step value: " step

# Input validation
if ! [[ "$start" =~ ^-?[0-9]+$ ]] || ! [[ "$end" =~ ^-?[0-9]+$ ]] || ! [[ "$step" =~ ^[0-9]+$ ]]; then
  echo "Error: Start and end must be integers, step must be a positive integer."
  exit 1
fi

if [ "$step" -le 0 ]; then
  echo "Error: Step must be greater than 0."
  exit 1
fi

# Print numbers using seq
echo "Printing numbers from $start to $end with step $step:"
seq "$start" "$step" "$end"


