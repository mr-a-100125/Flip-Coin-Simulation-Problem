#!/bin/bash
echo "Welcome to Flip Coin Simulation Problem."

flipCoin=$((RANDOM%2))
if [ $flipCoin -eq 0 ]
then
	heads=$(($heads+1))
	echo "heads is winner."
else
	tails=$(($tails+1))
	echo "tails is winner." 
fi
