#!/bin/sh

# This script makes no file copies at all, only hard links.

input=${1:?input directory missing}
output=${2:?output directory missing}

mkdir -p $output

for dir in $input/*
do
    dirBase=$(basename $dir)
    outputDir=$output/$dirBase
    mkdir -p $outputDir

    # its, wav and nested upl
    ln $dir/*/*.* $dir/*/*/*.* $outputDir
done
