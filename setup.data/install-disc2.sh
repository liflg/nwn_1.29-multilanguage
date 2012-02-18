#!/bin/sh

GAME_SETUP=$PWD
CDROM_FILE="disk2.bzf"
DISC="Disc 2"

if [ -x $GAME_SETUP/setup.data/biounzip -a -e $SETUP_CDROMPATH/$CDROM_FILE ]
then
	echo 
  	echo "Extracting files from $DISC"
  	echo
        
	$GAME_SETUP/setup.data/biounzip $SETUP_CDROMPATH/$CDROM_FILE . >/dev/null

	if [ ! -e data/aurora_tcn.bif ]
	then
  		$GAME_SETUP/setup.data/biounzip.dynamic $SETUP_CDROMPATH/$CDROM_FILE . >/dev/null
	fi
else
  	echo 
  	echo "ERROR - can't extract files from $DISC"
  	echo
fi

