#!/usr/bin/bash option(s)
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
#check extension It must .c 
echo '***********************************************************************'
echo '###################¤ welcome Gang ¤ ################################# '
echo '**********************************************************************'
###Declaration Variable 
arg="$1"
ext=".c"
found=false
test=false

echo "############ Your File U must input $ext Extension !!!################# "

echo "Your File with Extension  ${arg: -2}  "
########FUNCTION CHECK THE Extension#########################################
CheckExtension(){
  	 if [[ "${arg: -2}" == "$ext" ]];
		 then
       			  test=true
	else
echo "####### Sorry  Mec You File NOt .c  Try again With Correct Extension#####"
echo '########################################################################'

 exit;
	fi
		}
 ###########################END FUNCTION CHECK EXTENSION#####################
#####################FUNCTION CHECK IF THE FILE IN CURRENT DIRECTORY########

CheckDirectory(){

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
                   now="$(date +"%m_%d_%Y_%M:%S").o"
                          `gcc -Wall $1 -o $now `;
                                      output=`./$now`;
                                      echo "$output";
                                       echo "THank You For Use My Script :° ";


    else

        echo "Absence Of file this Directory"

fi

fi

}
###################Main#####################################################
#####CALL THE FUNCTION CHECK	
CheckExtension


####CALL FUNCTION CHECK DIRECTORY
CheckDirectory "$arg"
 
