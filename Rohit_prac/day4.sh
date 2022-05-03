for item in `ls *`

do

     Roh=`echo $item | awk -F. '{ print $1 }'`

     if [ -d $Roh ]

     then

     rm -rf $Roh

 SO=`echo $item | awk -F. '{ print $2 }'`
elif [ -d $SO ]

then

rm -rf $SO

     fi

     mkdir -p $Roh/$SO

     cp -r $item $Roh/$SO

done
