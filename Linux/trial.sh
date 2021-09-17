#!/bin/bash

touch Dealers_working_during_losses
echo "File Dealers_working_during_losses created"
awk '{print $1,$2,$5,$6}' 0310_Dealer_schedule > Roulette_0310
echo "file Roulette_0310 created"
grep -i "05:00:00 AM" Roulette_0310 >> Dealers_working_during_losses
grep -i "08:00:00 AM" Roulette_0310 >> Dealers_working_during_losses
grep -i "02:00:00 PM" Roulette_0310 >> Dealers_working_during_losses
grep -i "08:00:00 PM" Roulette_0310 >> Dealers_working_during_losses
grep -i "11:00:00 PM" Roulette_0310 >> Dealers_working_during_losses
echo "0310 appended to Dealers_working_during_losses"
rm Roulette_0310
echo "File Roulette_0310 removed"
awk '{print $1,$2,$5,$6}' 0312_Dealer_schedule > Roulette_0312
echo "file Roulette_0312 created"
grep -i "05:00:00 AM" Roulette_0312 >> Dealers_working_during_losses
grep -i "08:00:00 AM" Roulette_0312 >> Dealers_working_during_losses
grep -i "02:00:00 PM" Roulette_0312 >> Dealers_working_during_losses
grep -i "08:00:00 PM" Roulette_0312 >> Dealers_working_during_losses
grep -i "11:00:00 PM" Roulette_0312 >> Dealers_working_during_losses
echo "0312 appended to Dealers_working_during_losses"
rm Roulette_0312
echo "file Roulette_0312 destroyed"
awk '{print $1,$2,$5,$6}' 0315_Dealer_schedule > Roulette_0315
echo "file Roulette_0315 is born"
grep -i "05:00:00 AM" Roulette_0315 >> Dealers_working_during_losses
grep -i "08:00:00 AM" Roulette_0315 >> Dealers_working_during_losses
grep -i "02:00:00 PM" Roulette_0315 >> Dealers_working_during_losses
echo "0315 appended to Dealers_working_during_losses"
rm Roulette_0315
echo "file 0315 is no longer with us"
