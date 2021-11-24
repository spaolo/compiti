#!/bin/bash
while true
do
A=$((1 + RANDOM % 10))
B=$((1 + RANDOM % 10))

printf "$A x $B =? "
read x
y=$(( $A * $B ))

if [ X$x = X$y ]
then

        motivazione=$((1 + RANDOM % 2))
        if [ $motivazione -eq 1 ]
        then
                flag=$((1 + RANDOM % 10))
                if [ $flag -gt 5 ]
                then lit="-l" ; else lit=""; fi

                flag=$((1 + RANDOM % 10))
                if [ $flag -gt 5 ]
                then acc="-a"; else acc=""; fi

                flag=$((1 + RANDOM % 10))
                if [ $flag -gt 5 ]
                then fly="-F"; else fly=""; fi
                sl -e $lit $acc $fly
		echo giusto
                fi
        if [ $motivazione -eq 2 ]
                then
                echo
                selcow=$(ls  /usr/share/cowsay/cows/|shuf -n 1)
                cowsay -f $selcow "giusto"
        fi
	echo "$A x $B =$y => $x giusto" >> stat_tabelline
else
	cowsay asino 
	echo "$A x $B =$y => $x sbagliato" >> stat_tabelline
fi

done
