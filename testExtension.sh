echo 'testing extension '
arg="$1"
ext=".c"
echo "$ext"
echo "${arg: -2}"
 if [[ "${arg: -2}" == "$ext" ]];
 then
        test=true
else
test=false
fi

