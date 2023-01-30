#!/bin/bash

time lfs find /scratch -type f -print0 | xargs -0 stat -c '%s %Y' | awk '{size[int((1609452000-$2)/2628000)][int(log($1)/log(2))]++}END{for (i in size) for (j in size[i]) printf("%10d %3d %3d\n", 2^j, i, size[i][j])}' | sort -n | tee filesizes_timestamps.txt
