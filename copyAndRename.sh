#!/bin/bash

# Copy and rename the image files

MYDIR="allfiles"

mkdir -p $MYDIR
cp *.tex $MYDIR
cp *.bib $MYDIR
cp *.cls $MYDIR
cp *.clo $MYDIR
cp *.bst $MYDIR
cp *.eps $MYDIR


for f in $(egrep "imgs/[a-zA-Z0-9\/]+(\.[a-zA-Z]+)?" *.tex -o -h)
do
	fname=$(echo $f | sed 's/\//_/g')
	echo $fname
	cp $f $MYDIR/$fname
	sed -i "s:$f:$fname:g" $MYDIR/*.tex	
done



