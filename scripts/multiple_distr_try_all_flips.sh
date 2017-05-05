#!/bin/sh

# inspired by https://github.com/mschatz/flipabit

if [ ! -r bin/exhaustive_flipabit ]
then
    make
fi

if [ "$#" -ne 4 ]; then
    echo "./scripts/multiple_distr_try_all_flips.sh <intermediate program> <base program> <path to output dir> <path to candidate mutations>"
    exit
fi

for itervar in `seq 0 1000`
do
  cp $2 $1
  IFS=$'\n'
  for line in `gshuf $4 -n 500`
  do
    IFS=$' ';
    arr=(`echo ${line}`)
    pos=${arr[0]}
    bpos=${arr[1]}
    ./bin/exhaustive_flipabit $1 $1.$pos $pos $bpos >& $1.$pos.log
    chmod +x $1.$pos

    gtimeout 6 bash -c "./$1.$pos >& $1.$pos.out"
    last=$?
    if [ $last != 0 ]
    then
      `wc -l $3mean >> linecounts.final`
      rm $3mean
      break
    else 
      echo $pos $bpos >> $3mean
      last=$?
      if [ $last != 0 ]
      then
        `wc -l $3mean >> linecounts.final`
        rm $3mean
        break
      fi
    fi
    rm $1.$pos.out  
    rm $1.$pos.log
    mv $1.$pos $1
  done
  `wc -l $3mean >> linecounts.final`
  rm $3mean
done
