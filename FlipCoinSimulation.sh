#!/bin/bash 
echo "Welcome to Flip Coin Simulation Problem."

loopCond=1
heads=0
tails=0
while [ $loopCond -gt 0 ]
do
        flipCoin=$((RANDOM%2))
        if [ $flipCoin -eq 0 ]
        then
                heads=$(($heads+1))
        else
                tails=$(($tails+1))
        fi
	if [ $heads -eq 21 ]||[ $tails -eq 21 ]
	then
		diff1=$(($heads-$tails))
		diff2=$(($tails-$heads))
		if [ $diff1 -eq 0 ]
		then
			echo "TIE continuing till the difference of minimum 2 points"
		fi
		if [ $diff1 -ge 2 ]||[ $diff2 -ge 2 ]
		then
			loopCond=0
		fi
	fi
done
if [ $heads -gt $tails ]
then
        echo "heads is winner by $(($heads-$tails))."
else
	echo "tails is winner by $(($tails-$heads))."
fi
