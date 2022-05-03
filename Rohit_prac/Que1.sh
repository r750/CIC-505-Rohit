declare -A Rohit;
read -p "Enter value a: " a;
read -p "Enter value b: " b
read -p "Enter value c: " c

Rohit[calc1]=$(( a+b*c ));
Rohit[calc2]=$(( a*b+c ));
Rohit[calc3]=$(( c+a/b ));
Rohit[calc4]=$(( a%b+c ));

for ((cnt=0;cnt<${#Rohit[@]};cnt++))
do
	arrayRohit[cnt]=${Rohit[calc"$(( cnt+1 ))"]};
done

echo "Original order of array :- "${arrayRohit[@]};

for (( i=0;i<${#arrayRohit[@]};i++ ))
do
	for (( j=i+1; j<${#arrayRohit[@]};j++ ))
	do
		if [ ${arrayRohit[i]} -lt ${arrayRohit[j]} ]
		then
			temp=${arrayRohit[i]};
			arrayRohit[i]=${arrayRohit[j]};
			arrayRohit[j]=$temp;
		fi
	done
	echo "After step $i :- "${arrayRohit[@]};
done

echo $a $b $c;
echo ${Rohit[@]};
echo ${!Rohit[@]};
echo "Sorted array :- "${arrayRohit[@]};
