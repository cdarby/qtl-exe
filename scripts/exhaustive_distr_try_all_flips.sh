#!/bin/sh

# inspired by https://github.com/mschatz/flipabit

if [ ! -r bin/exhaustive_flipabit ]
then
  make
fi

if [ "$#" -ne 3 ]; then
    echo "./scripts/exhaustive_distr_try_all_flips.sh <base program> <number of bytes> <path to output dir>"
fi

for pos in `seq 0 $2`
do
  #echo -n "Introducing all mutations to a bit in byte $pos... "
  for bpos in `seq 0 7` 
  do
    ./bin/exhaustive_flipabit $1 $1.$pos $pos $bpos >& $1.$pos.log
    chmod +x $1.$pos

    gtimeout 6 bash -c "./$1.$pos >& $1.$pos.out"
    last=$?
    if [ $last != 0 ]
    then
      `echo $pos $bpos $last >> $1.$2.final`
    else 
      #if it fails then there are just the first 2 fields
      echo $pos $bpos `cat $1.$pos.out | datamash mean 1` >> $3mean
      echo $pos $bpos `cat $1.$pos.out | datamash sstdev 1` >> $3sstdev
      echo $pos $bpos `cat $1.$pos.out | datamash sskew 1` >> $3sskew
      echo $pos $bpos `cat $1.$pos.out | datamash jarque 1` >> $3jarque
      echo $pos $bpos `cat $1.$pos.out | datamash dpo 1` >> $3dpo
      
      last=$?
      if [ $last != 0 ]
      then
        `echo $pos $bpos 999 >> $1.$2.final`
      fi
    fi
    rm $1.$pos.out  
    rm $1.$pos.log
    rm $1.$pos
  done
done
