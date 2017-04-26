#!/bin/sh

# inspired by https://github.com/mschatz/flipabit

if [ ! -r bin/flipabit ]
then
  make
fi

for pos in `seq 0 $2`
do
  ./bin/flipabit $1 $1.$pos $pos >& $1.$pos.log
  chmod +x $1.$pos

  gtimeout 6 bash -c "./$1.$pos >& $1.$pos.out"
  #./qtl.$pos >& $pos.out
  last=$?
  if [ $last != 0 ]
  then
    `echo $pos $last >> $1.$2.final`
  fi
  rm $1.$pos.out  
  rm $1.$pos.log
  rm $1.$pos
done
