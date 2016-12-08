#!/bin/sh

# This script makes no file copies at all, only hard links.

input=/Volumes/4TB/media/franklin-Leonid-input
output=/Volumes/4TB/media/franklin-Leonid-output
mediaOutput=/Volumes/4TB/media/franklin-Leonid-media

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
