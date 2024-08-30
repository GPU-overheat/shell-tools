#!/bin/bash

prefix="file-"

suffix="$1"

highest=$(ls ${prefix}*${suffix} 2>/dev/null | grep -o '[0-9]*' | sort -n | tail -1)

if [ -z "$highest" ]; then
    highest=0
fi

new_number=$((highest + 1))

new_file="${prefix}${new_number}${suffix}"
touch "$new_file"

echo "Generated: $new_file"
