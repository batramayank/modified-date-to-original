#!/bin/bash

imageDirectory=$2
exifToolPath=$2
for f in $1/*.jpg
	 do
		datetime=`$exifToolPath $f | grep 'Create Date' | sed 's/^.*: //; s/\(.*\):/\1./; s/://g; s/ //g'`
		if [ "$datetime" = "" ]
			 then 
				echo "File $f does not have a creation date. So logic in current version will not work for it"
		else 
			touch -t ${datetime} ${f}; 
		fi	
	done
