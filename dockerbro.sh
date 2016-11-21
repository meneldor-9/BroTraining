#!/bin/bash
# dockerbro.sh
　
docker run --rm -it -v $(pwd):/tmp -w /tmp opennsm/bro /bin/bash
