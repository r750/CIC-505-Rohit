declare -a pracArr;

for ((i=0;i<20;i++))
do
	pracArr[$i]=$((RANDOM%100));
done

echo "Original array :- "${pracArr[@]};

for((i=0;i<${#pracArr[@]};i++))
do
	for((j=i+1;j<${#pracArr[@]};j++))
	do
		if [ ${pracArr[i]} -gt ${pracArr[j]} ]
		then
			temp=${pracArr[i]};
			pracArr[i]=${pracArr[j]};
			pracArr[j]=$temp;
		fi
	done
done

echo "Sorted array :- " ${pracArr[@]}
