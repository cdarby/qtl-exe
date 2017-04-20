#!/bin/sh

# inspired by https://github.com/mschatz/flipabit

if [ ! -r flipabit ]
then
  make
fi

#echo "Running original program"
./$1 >& gold.out

for pos in `seq 0 $2`
do
  #echo -n "Introducing random mutation to a bit in byte $pos... "
  ./flipabit $1 $1.$pos $pos >& $pos.log
  chmod +x $1.$pos

  gtimeout 1 bash -c "./$1.$pos >& $pos.out"
  #./qtl.$pos >& $pos.out
  last=$?
  if [ $last != 0 ]
  then
    echo $pos $last
  else 
    diff gold.out $pos.out >& $pos.out.diff
    last=$?
    if [ $last != 0 ]
    then
      echo $pos "0" #keep the strange output file
    else
      rm $pos.out.diff
    fi
  fi
  rm $pos.out  
  rm $pos.log
  rm $1.$pos
done
