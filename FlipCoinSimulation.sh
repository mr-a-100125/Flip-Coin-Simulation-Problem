#!/bin/bash
echo "Welcome to Flip Coin Simulation Problem."

n=10
heads=0
tails=0
while [ $n -gt 0 ]
do
        flipCoin=$((RANDOM%2))
        if [ $flipCoin -eq 0 ]
        then
                heads=$(($heads+1))
        else
                tails=$(($tails+1))
        fi
	n=$(($n-1))
done
if [ $heads -gt $tails ]
then
        echo "heads is winner."
elif [ $heads -lt $tails ]
then
	echo "tails is winner."
else
        echo "TIE"
fi
