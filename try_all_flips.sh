#!/bin/sh

if [ ! -r flipabit ]
then
  make
fi

#echo "Running original program"
./qtl >& gold.out

for pos in `seq 0 8976`
do
  #echo -n "Introducing random mutation to a bit in byte $pos... "
  ./flipabit qtl qtl.$pos $pos >& $pos.log
  chmod +x qtl.$pos

  gtimeout 1 bash -c "./qtl.$pos >& $pos.out"
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
      echo $pos "0"
    else
      rm $pos.out.diff
    fi
  fi
  rm $pos.out  
  rm $pos.log
  rm qtl.$pos
done
