#!/bin/bash

read -p "Enter units: " units

bill=0

if [ $units -le 100 ]; then
    bill=$(( units * 4 ))

elif [ $units -le 200 ]; then
    bill=$(( 100 * 4 + (units - 100) * 6 ))

elif [ $units -le 300 ]; then
    bill=$(( 100 * 4 + 100 * 6 + (units - 200) * 10 ))

else
    bill=$(( 100 * 4 + 100 * 6 + 100 * 10 + (units - 300) * 15 ))
fi

echo "Your bill is: ₹$bill"
