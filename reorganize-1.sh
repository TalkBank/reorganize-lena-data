#!/bin/sh

# This script makes no file copies at all, only hard links.

input=/Volumes/4TB/media/franklin-input1
output=/Volumes/4TB/media/franklin-output1

mkdir -p $output

for dir in $input/*
do
    dirBase=$(basename $dir)
    outputDir=$output/$dirBase
    mkdir -p $outputDir

    # its, wav and nested upl
    ln $dir/*/*.* $dir/*/*/*.* $outputDir
done
