#!/bin/bash
# downloadpcap.sh

for i in illauth.pcap theft.pcap email.pcap notube.pcap dairystock.pcap; do
  echo "Downloading pcap $i"
  wget -q https://www.bro.org/static/workshop-11/traces/$i
done
