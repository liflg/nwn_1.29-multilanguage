#!/bin/sh

GAME_SETUP=$PWD
CDROM_FILE="data1.cab"
DISC="Disc 1"

if [ -e $SETUP_CDROMPATH/$CDROM_FILE ]
then
	echo
  	echo "Extracting files from $DISC"
  	echo

	$GAME_SETUP/setup.data/unshield -d $GAME_SETUP/DATA x $SETUP_CDROMPATH/$CDROM_FILE > /dev/null
	
	FILE=`find $GAME_SETUP/DATA -name 2da.bif` 
	FOUND=`dirname $FILE`
	mkdir $GAME_SETUP/DATA/files
	cp $FOUND/* $GAME_SETUP/DATA/files

        FILE2=`find $GAME_SETUP/DATA -name chitin.key`
        FOUND2=`dirname $FILE2`
        mkdir $GAME_SETUP/DATA/files2
        #cp $FOUND2/chitin.key  $FOUND2/dialog* $GAME_SETUP/DATA/files2
	cp $FOUND2/chitin.key  $GAME_SETUP/DATA/files2

else
  	echo
  	echo "ERROR - can't extract files from $DISC"
  	echo
  	exit 1
fi
