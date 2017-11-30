#!/bin/bash

while true; do
	echo "
----------------------------------------------------------------------
- 		      Adaption library for A12 Ambarella			     -
----------------------------------------------------------------------
>> Select Build Model :
   1. Crystal
   2. X1000
   3. GXR1000
   4. GXR2000
   5. Quit
"
	read -p "Enter Selection [1-5] : "

	if [[ $REPLY =~ ^[1-5]$ ]]; then
		if [[ $REPLY == 1 ]]; then
			echo "Plaese select [ u ] for all"
			cd ./vendors/ambarella/lib
			7z x -y CRYSTAL_X1000_lib_adas.7z
			7z x -y CRYSTAL_lib.7z
			
			cd ../ucode/a55
			7z x -y CRYSTAL_ucode_a12a55.7z

			cd ../../image/iqtable/b5_imx322/bins
			7z x -y CRYSTAL_iq_tuning_b5_imx322.7z
			
			cd ../../ov4689/bins
			7z x -y CRYSTAL_iq_tuning_ov4689.7z
			
			cd ../../../../../../linux_image
			7z x -y linux_image.7z

			echo "Complete all file adapting for CRYSTAL.. exit"
			
			cd ../
			make clean
			make distclean
			make crystal_8gb_defconfig			
			echo "Complete configure. Enter make"
			echo ""
			exit 0
		fi

		if [[ $REPLY == 2 ]]; then
			echo "Plaese select [ u ] for all"
			cd ./vendors/ambarella/lib
			7z x -y CRYSTAL_X1000_lib_adas.7z
			7z x -y lib_patch_cr3000t_x1000_20170328.7z
			
			cd ../ucode/a55
			7z x -y ucode_a12a55_patch_cr3000t_x1000_20170504.7z

			cd ../../image/iqtable/b5_imx322/bins
			7z x -y iq_tuning_b5_imx322_cr3000t_x1000_20170328.7z
			
			cd ../../ov4689/bins
			7z x -y iq_tuning_ov4689_cr3000t_x1000_20170328.7z
			
			cd ../../../../../../linux_image
			7z x -y linux_image.7z

			echo "Complete all file adapting for X1000.. exit"
			
			cd ../
			make clean
			make distclean
			make cr3000t_8gb_ambalink_defconfig			
			echo "Complete configure. Enter make"
			echo ""
			exit 0
		fi
		
		if [[ $REPLY == 3 ]]; then
			echo "Plaese select [ u ] for all"
			cd ./vendors/ambarella/lib
			7z x -y lib_patch_ufcws_20161128.7z
			7z x -y lib_patch_cr3000t_x1000_20170328.7z
			
			cd ../ucode/a55
			7z x -y ucode_a12a55_patch_cr3000t_x1000_20170504.7z

			cd ../../image/iqtable/b5_imx322/bins
			7z x -y iq_tuning_b5_imx322_cr3000t_x1000_20170328.7z
			
			cd ../../ov4689/bins
			7z x -y iq_tuning_ov4689_cr3000t_x1000_20170328.7z
			
			cd ../../../../../../linux_image
			7z x -y linux_image.7z

			echo "Complete all file adapting for GXR1000.. exit"
			
			cd ../
			make clean
			make distclean
			make solid740_8gb_defconfig		
			echo "Complete configure. Enter make"
			echo ""
			exit 0
		fi
		
		if [[ $REPLY == 4 ]]; then
			echo "Plaese select [ u ] for all"
			cd ./vendors/ambarella/lib
			7z x -y lib_patch_ufcws_20161128.7z
			7z x -y lib_patch_cr3000t_x1000_20170328.7z
			
			cd ../ucode/a55
			7z x -y ucode_a12a55_patch_cr3000t_x1000_20170504.7z

			cd ../../image/iqtable/b5_imx322/bins
			7z x -y iq_tuning_b5_imx322_cr3000t_x1000_20170328.7z
			
			cd ../../ov4689/bins
			7z x -y iq_tuning_ov4689_cr3000t_x1000_20170328.7z
		
			cd ../../../../../../linux_image
			7z x -y linux_image_WIFI_IOS_20170825.7z

			echo "Complete all file adapting for GXR2000.. exit"
			
			cd ../
			make clean
			make distclean
			make gxr2000_8gb_ambalink_new_defconfig	
			echo "Complete configure. Enter make"
			echo ""
			exit 0
		fi
		

		if [[ $REPLY == 5 ]]; then
			echo "exit.."
			exit 0 
		fi
	else
		echo "Please select 1 - 5"
	fi		
		
done		
