#!/bin/bash
# run.sh
　
echo "Deleting all remaining zip files..."
rm -rf *.zip
echo "Deleting all remaining bro directories..."
rm -rf *-bro
./downloadpcap.sh
docker run --rm -v $(pwd):/tmp -w /tmp opennsm/bro ./broallthepcap.sh
./dockerbro.sh
