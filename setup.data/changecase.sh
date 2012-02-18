#!/bin/sh

NWN_SETUP=$PWD

if [ -e $NWN_SETUP/DATA ]
then
 	cd $NWN_SETUP/DATA
 	sh $NWN_SETUP/setup.data/ccase -r * &> /dev/null
 
	mv texturepacks_32bit/gui_32bit.erf  texturepacks_32bit/GUI_32bit.erf
	mv texturepacks_64bit_texture/textures_tpa.erf texturepacks_64bit_texture/Textures_Tpa.erf
 	mv texturepacks_16m32b/textures_tpc.erf texturepacks_16m32b/Textures_Tpc.erf
 	mv texturepacks_64bit_tile/tiles_tpa.erf texturepacks_64bit_tile/Tiles_Tpa.erf
 	mv texturepacks_32bit_tile/tiles_tpb.erf texturepacks_32bit_tile/Tiles_Tpb.erf
 	mv texturepacks_16m32b/tiles_tpc.erf texturepacks_16m32b/Tiles_Tpc.erf
fi
