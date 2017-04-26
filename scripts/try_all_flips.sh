#!/bin/sh

# inspired by https://github.com/mschatz/flipabit

if [ ! -r bin/flipabit ]
then
  make
fi

./$1 >& unmod.out

for pos in `seq 0 $2`
do
  ./bin/flipabit $1 $1.$pos $pos >& $pos.log
  chmod +x $1.$pos

  gtimeout 1 bash -c "./$1.$pos >& $pos.out"
  #./qtl.$pos >& $pos.out
  last=$?
  if [ $last != 0 ]
  then
    echo $pos $last
  else 
    diff ummod.out $pos.out >& $pos.out.diff
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
