#!/bin/bash -x


function Result() {
	echo $1;
}

calculation=$(Result $((RANDOM%2)) );

if [ $calculation -eq 1 ]
then
	echo "You got Success";
else
	echo "You got Failure";
fi
