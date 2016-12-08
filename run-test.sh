#!/bin/sh

set -e

base=/tmp/reorganize$$
output1=$base/output1
output=$base/leonid-output
media=$base/leonid-media

./reorganize-1.sh ./test/input1 $output1
diff -r test/output1 $output1

./reorganize-2.sh ./test/leonid-input $output $media
diff -r test/leonid-output $output
diff -r test/leonid-media $media
