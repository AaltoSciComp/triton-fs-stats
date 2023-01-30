#!/bin/bash

time lfs find /scratch -type f -print0 | xargs -0 stat -c '%s' | awk '{size[int(log($1)/log(2))]++}END{for (i in size) printf("%10d %3d\n", 2^i, size[i])}' | sort -n | tee filesizes.txt
