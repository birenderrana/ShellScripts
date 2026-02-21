#!/bin/bash

# 1. Setup the directory
LOG_DIR=$1

# 2.First, let's make sure the user actually typed a folder name
if [ -z "$LOG_DIR" ]; then
    echo "Error: Please provide a directory path."
    exit 1
fi

# 3. Check if that directory actually exists
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: The folder $LOG_DIR does not exist."
    exit 1
fi

# Initialize our counters at zero
comp_count=0
del_count=0

echo "Starting work in $LOG_DIR..."

# 4. LOOP: Look at every file in the folder one by one
for file in "$LOG_DIR"/*; do

    # A. COMPRESS: If it's a .log file and older than 7 days
    if [[ "$file" == *.log ]] && [ $(find "$file" -mtime +7) ]; then
        gzip "$file"
        ((comp_count++))
    fi

    # B. DELETE: If it's a .gz file and older than 30 days
    if [[ "$file" == *.gz ]] && [ $(find "$file" -mtime +30) ]; then
        rm "$file"
        ((del_count++))
    fi

done

# 5. Show the results
echo "Done!"
echo "Files compressed: $comp_count"
echo "Files deleted:    $del_count"
