#!/bin/sh

# This script makes no file copies at all, only hard links.

input=${1:?input directory required}
output=${2:?output directory required}
mediaOutput=${3:?media output directory required}

mkdir -p $output
mkdir -p $mediaOutput

for dir in $input/*
do
    dirBase=$(basename $dir)
    outputDir=$output/$dirBase
    mkdir -p $outputDir

    mediaOutputDir=$mediaOutput/$dirBase
    mkdir -p $mediaOutputDir

    ln $dir/*.cha $outputDir
    for ext in its upl
    do
	extDir=$outputDir/0$ext
	mkdir -p $extDir
	ln $dir/*.$ext $extDir
    done

    ln $dir/*.wav $mediaOutputDir
done
