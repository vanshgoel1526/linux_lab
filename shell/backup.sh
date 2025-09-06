#!/bin/bash
mkdir -p backup


timestamp=$(date +"%Y%m%d_%H%M%S")


for file in *.txt; do
  if [[ -f "$file" ]]; then
    filename=$(basename "$file" .txt)
    cp "$file" "backup/${filename}_$timestamp.txt"
    echo "Backed up: $file -> backup/${filename}_$timestamp.txt"
  fi
done

