function add() {
	r=$(($1 + $2));
	echo "$1 + $2 = $r";
}

result=$( add $((RANDOM%90 + 10)) $((RANDOM%90 + 10)) );
echo $result;
