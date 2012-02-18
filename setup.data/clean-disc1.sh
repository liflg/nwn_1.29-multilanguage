#!/bin/sh

NWN_SETUP=$PWD

if [ -e $NWN_SETUP/DATA ]
then
 	rm -rf $NWN_SETUP/DATA
fi
