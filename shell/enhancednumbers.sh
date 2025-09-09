#!/bin/bash


# Validate number of arguments
if [ $# -ne 3 ]; then
  echo "Usage: $0 <start> <end> <step>"
  exit 1
fi

start=$1
end=$2
step=$3

# Validate that start, end, and step are integers
if ! [[ "$start" =~ ^-?[0-9]+$ && "$end" =~ ^-?[0-9]+$ && "$step" =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: start and end must be integers; step must be a positive integer."
  exit 1
fi

# Determine direction based on start and end
if [ "$start" -le "$end" ]; then
  for ((i=start; i<=end; i+=step)); do
    echo $i
  done
else
  for ((i=start; i>=end; i-=step)); do
    echo $i
  done
fi

