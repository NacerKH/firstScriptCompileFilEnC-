#!/bin/bash
courant_path=`pwd`
echo "$courant_path"
#check extension
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
