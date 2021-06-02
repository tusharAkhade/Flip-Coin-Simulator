headCount=0
tailCount=0
maxWon=21
while [ $headCount -lt $maxWon -a $tailCount -lt $maxWon ]
do
	random=$((RANDOM%2))
	if [ $random -eq 1 ]
	then
		((headCount++))
	else
		((tailCount++))
	fi
done
if [ $headCount -eq $maxWon ]
then
	wonCount=$((headCount-tailCount))
	echo "Head won."
	echo "Head won by $wonCount points."
else
	wonCount=$((tailCount-headCount))
	echo "Tail won."
	echo "Tail won by $wonCount points."
fi
