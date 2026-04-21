#!/bin/bash
filename="$1"
path=$(find /home/pjrarthur -name "$filename" | head -n 1)
if [ -z "$path" ]; then
  echo "The file: "$filename" was not found. "
  exit 1
fi
echo "opening your file: $filename"
xdg-open "$path"
