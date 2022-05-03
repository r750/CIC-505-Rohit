#!/bin/bash

counter=0;

fruits[((counter++))]="Mango";
fruits[((counter++))]="Grapes";
fruits[((counter++))]="Orange";

echo "All elements of an array : " ${fruits[@]};

echo "Index 1st element : " ${fruits[1]};

echo "All index : " ${!fruits[@]};

echo "Size of an array : " ${#fruits[@]};
