#!/bin/bash
# broallthepcap.sh
　
#For each pcap found in current directory
for pcap in $(for i in *; do file $i; done | grep "tcpdump capture file" | cut -d":" -f1); do 
　
  echo "Running bro against pcap: $pcap"
　
  #Create a directory named after the pcap and add "-bro"
  mkdir $pcap-bro
　
  #Run bro against the pcap ignoring checksum and running all local scripts
  bro -C -r $pcap local "HTTP::default_capture_password=T" 1>/dev/null
　
  #Move all generated bro files to the directory for that pcap
  mv *.log ./$pcap-bro/
　
  #Delete pcap after the zip file is created
  rm -f $pcap
done
