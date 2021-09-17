#!/bin/bash

find -type f -iname *$1* | cat *$1* > Roulette_Schedule
awk '{print $1,$2,$5,$6}' Roulette_Schedule > Roulette_Dealer_Finder
awk '{print}' Roulette_Dealer_Finder | grep -i $2 Roulette_Dealer_Finder > Roulette_Time
awk '{print}' Roulette_Time | grep -i $3 Roulette_Time
echo

rm Roulette_Schedule
rm Roulette_Dealer_Finder
rm Roulette_Time






