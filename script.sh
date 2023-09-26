#!/bin/bash

# Directory containing the PCAP files to analyze
pcap_directory=$(pwd)

#option2 with input command if you want use, you should del hash from 7,8, 13 line and put hash in 14 line
#echo "Input your tshark command:"
#read command

# Function to analyze a PCAP file using tshark. In line 14, keep in mind that you'll need to customize the script by specifying the actual filter expressions, statistics, and PCAP file locations relevant to your specific use case. f.e: tshark -r "$pcap_directory/$pcap_file" -Y "your_filter_expression" -qz "your_statistic" > "${pcap_file%.pcap}_analysis.txt" 
analyze_pcap() {
  pcap_file="$1"
# tshark -r "$pcap_directory/$pcap_file" $command > "${pcap_file%.pcap}_analysis.txt"
  tshark -r "$pcap_directory/$pcap_file" -Y "http.request.full_uri" -Tfields -e http.request.full_uri > "${pcap_file%.pcap}_analysis.txt" 
  echo -n "#"
}

echo "Running your multiple t-shark command to *.pcap files from your directory:" && ls -ln *pcap

# List of PCAP files in the directory
pcap_files=$(ls "$pcap_directory"/*.pcap)

# Count the total number of PCAP files
total_files=$(echo "$pcap_files" | wc -w)

# Initialize the progress bar
echo -n "Progress: ["


# Run tshark in parallel for each PCAP file
for pcap_file in $pcap_files; do
  analyze_pcap "$(basename "$pcap_file")" &
done

# Wait for all tshark instances to finish
wait

# Complete the progress bar
echo "]"

echo "All tshark instances have finished analyzing the PCAP files."
