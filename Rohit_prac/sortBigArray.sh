Array=(6 8 3 23 54 9 10 12 43 23 65 76);
echo "Original order of the Array :- "${Array[@]};
for (( i=0;i<${#Array[@]};i++ ))
do
	for (( j=i+1; j<${#Array[@]};j++ ))
	do
		if [ ${Array[i]} -lt ${Array[j]} ]
		then
			temp=${Array[i]};
			Array[i]=${Array[j]};
			Array[j]=$temp;
		fi
	done
	echo "After step $i :- "${Array[@]};
done
echo "After sorting descending order :- "${Array[@]};
