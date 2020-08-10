#/bash/bin -x 

money=250
bet=0
bet_won=0
bet_loose=0
while [[ $money -gt 0 && $money -le 300 ]]
do
(( bet ++))
check=$((RANDOM %2))
if [ $check -eq 1 ]
 then 
bet_won=$(( $bet_won + 1 ))
((money++))
else 
bet_loose=$(($bet_loose +1 ))
((money--))

fi
if [[ $money -eq 0 || $money -eq 300 ]]
then 
break
fi
done
echo " the  gambler won mo of time " $bet_won
echo " the  gambler lost no of time " $bet_loose
echo "the no of bets "$bet
