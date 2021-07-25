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
		loopCond=0
	fi
done
if [ $heads -gt $tails ]
then
        echo "heads is winner by $(($heads-$tails))."
elif [ $heads -lt $tails ]
then
	echo "tails is winner by $(($tails-$heads))."
else
        echo "TIE"
fi
