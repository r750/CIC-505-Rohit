x=$1;
y=$2;

if [ $x -gt $y ]
then
	echo "$x is greater than $y";
elif [ $x -eq $y ]
then
	echo "$x and $y are equal";
else
	echo "$y is greater than $x";
fi
