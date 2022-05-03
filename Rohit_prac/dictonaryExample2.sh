declare -A movies



movies[english]="spiderman"

movies[tamil]="beast"

movies[telugu]="pushpa"

movies[hindi]="gangobhai"

movies[kannada]="kgf2"



echo "************Create************"

echo "Before Create : ${movies[@]}"

movies[malayalam]="kurup"

echo "After Create : ${movies[@]}"



echo "************Read***************"

echo "Fetch All Movies : ${movies[@]}"

echo "Fetch Single Movie : ${movies[tamil]}"





echo "***********Update**************"

echo "Before Update : ${movies[@]}"

movies[telugu]="bahubali"

echo "After Update : ${movies[@]}"



echo "************Delete*************"

echo "Before Delete : ${movies[@]}"

unset 'movies[english]'

echo "After Delete : ${movies[@]}"



echo "Length Of Dictionary : ${#movies[@]}"

echo "Keys Of Dictionary : ${!movies[@]}"
