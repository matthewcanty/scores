#!/bin/bash
find src/$1 -name '*.xml' | while read line; do

	outputFile="${line/.xml/.pdf}"
	outputFile="${outputFile/src/output}"

	mkdir -p "${outputFile%/*}"

    echo "Processing '${line##*/}'"

    mscore $line -o $outputFile
    
    echo "Generated '${outputFile##*/}'"
done
