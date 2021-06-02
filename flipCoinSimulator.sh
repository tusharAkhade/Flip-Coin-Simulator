read -p "How many times you want to toss the coin: " num
headCount=0
tailCount=0
for(( i=1; i<=$num; i++ ))
do
	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		((headCount++))
	else
		((tailCount++))
	fi
done

echo "Head won $headCount times"
echo "Tail won $tailCount times"
