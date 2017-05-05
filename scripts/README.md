# Scripts

Note that intermediate files will be generated in the directory where these scripts are run. Take care when running multiple instances simultaneously that file names do not conflict. You may have to manually remove some intermediate files after it's done running; such is the price of interacting with program crashes. 

`distr_try_all_flips.sh <base program> <number of bytes> <path to output dir>`  
base program is what you want to mutate (probably bin/qtl or the like)  
number of bytes is the length of the base program  
path to output dir is the location where final files will be written  
This just flips the last bit in each byte (interacts with flipabit)

`exhaustive_distr_try_all_flips.sh <base program> <number of bytes> <path to output dir>`  
base program is what you want to mutate (probably bin/qtl or the like)  
number of bytes is the length of the base program  
path to output dir is the location where final files will be written  
This flips every bit in each byte (interacts with exhaustive_flipabit)

`multiple_distr_try_all_flips.sh <intermediate program> <base program> <path to output dir> <path to candidate mutations>`  
intermediate program is the name that will be used for the program accruing mutations  
base program is what you want to mutate (probably bin/qtl or the like)  
original program 
path to output dir is the location where final files will be written  
This does 1000 trials and accrues up to 500 mutations, selected from an output file (e.g. mean) of a previous set of trials 
