#!/usr/bin/bash
################################################################################
#                              script Compile.sh                               ##
#                                                                              #
#  This scripts which We will used to compile C                                ##
#                                                                              #
#                                                                              #
#                                                                               #
# 30/04/2022   Kali         						               # 
#                                                                              #
#                                                                              #
#                                                                              #
#                                                                              #
################################################################################
################################################################################
################################################################################
#                                                                              #
#  Copyright (C) 2022, Kali                                                    #
#  benkhalifa.mohamednaceur@esprit.tn                                                                                                                          #
#                                                                              #
#  This program is free software; you can redistribute it and/or modify        #
#  it under the terms of the GNU General Public License as published by        #
#  the Free Software Foundation; either version 2 of the License, or           #
#  (at your option) any later version.                                         #
#                                                                              #
#                                                                              #
#                                                                              #
#  							                       #
#                                  					       #
#                                                                              #
#   									       #
#  								               #
#    									       #
#                                                                              #
################################################################################
################################################################################
################################################################################

################################################################################
# Help                                                                         #
################################################################################
Help()
{    
	helptext=`cat help.txt`
	echo "$helptext" 
 
}

################################################################################
################################################################################
# Main program                                                                 #
################################################################################
################################################################################
################################################################################
# Process the input options. Add options as needed.                            #
################################################################################
# Get the options
while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
     \?) # incorrect option
         echo "Error: Invalid option"
         exit;;
   esac
done
#check extension
testn= `bash testExtension.sh "$1"`
echo "$testn"
arg="$1"
ext=".c"
echo "$ext"
echo "${arg: -2}"
 if [[ "${arg: -2}" == "$ext" ]];
 then
	test=true             
else
echo " no c file to compile"
fi	

#find if the this file in current directory
found=false
if $test 
then

   for fich in `ls . `
      do
          if [ -f $fich ];
               then
                	 if  [ "$1" == "$fich" ]; 
		                then
                                   
			         	found=true
		
	               	fi
         fi

    done


      if $found
             then
                   now=$(date +"%m_%d_%Y_%M:%S")
                          `gcc -Wall $1 -o $now `;
                                      output=`./$now`;
                                      echo "$output";
                                       echo "THank You For Use My Script :° ";
	

    else 

        echo "Absence Of file this Directory"

fi 

fi	
