#!/bin/sh

# inspired by https://github.com/mschatz/flipabit

if [ ! -r flipabit ]
then
  make
fi

for pos in `seq 0 $2`
do
  #echo -n "Introducing all mutations to a bit in byte $pos... "
  for bpos in `seq 0 7` 
  do
    ./exhaustive_flipabit $1 $1.$pos $pos $bpos >& $1.$pos.log
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

#./exhaustive_distr_try_all_flips.sh outputO0/qtl0 9036 EXoutputO0-1/
#./exhaustive_distr_try_all_flips.sh outputO1/qtl1 9036 EXoutputO1-1/
#./exhaustive_distr_try_all_flips.sh outputO2/qtl2 9012 EXoutputO2-1/