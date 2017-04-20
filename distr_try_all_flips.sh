#!/bin/sh

# inspired by https://github.com/mschatz/flipabit

if [ ! -r flipabit ]
then
  make
fi

for pos in `seq 0 $2`
do
  #echo -n "Introducing random mutation to a bit in byte $pos... "
  ./flipabit $1 $1.$pos $pos >& $1.$pos.log
  chmod +x $1.$pos

  gtimeout 6 bash -c "./$1.$pos >& $1.$pos.out"
  #./qtl.$pos >& $pos.out
  last=$?
  if [ $last != 0 ]
  then
    `echo $pos $last >> $1.$2.final`
  else 
    `echo $pos >> $3/mutations`
    `cat $1.$pos.out | datamash mean 1 >> $3mean`
    `cat $1.$pos.out | datamash sstdev 1 >> $3sstdev`
    `cat $1.$pos.out | datamash sskew 1 >> $3sskew`
    `cat $1.$pos.out | datamash jarque 1 >> $3jarque`
    `cat $1.$pos.out | datamash dpo 1 >> $3dpo`
  fi
  rm $1.$pos.out  
  rm $1.$pos.log
  rm $1.$pos
done
