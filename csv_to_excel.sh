#!/bin/bash

# Converts a CSV file to an Excel (XLSX) file using the ssconvert tool from the gnumeric package.

echo "Today is " $(date)

sudo apt install gnumeric

read -p "Enter File name of csv as example.csv: " input_csv
read -p "Enter File name of the output xlsx as output.csv: " output_xlsx

ssconvert "$input_csv" "$output_xlsx"

echo "Done!"
