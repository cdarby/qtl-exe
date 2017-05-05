# Binaries
These are the 8 binary files I used to generate my results. Since the exact bits in the file are essential to the computations, I include the executables here. Be warned: they may not reproduce my results or even execute on your system.

## Compliation options
gcc qtl.c -o qtl  
gcc -O1 qtl.c -o qtl1  
gcc -O2 qtl.c -o qtl2  
gcc -Ofast qtl.c -o qtlf  
gcc -Os qtl.c -o qtls  
clang -fdiversify -frandom-seed=41 qtl.c -o qtlRAND41  
clang -fdiversify -frandom-seed=42 qtl.c -o qtlRAND42   
clang -fdiversify -frandom-seed=43 qtl.c -o qtlRAND43

## multicompiler version
<https://github.com/securesystemslab/multicompiler>  
`879d92f44a1dc236f90c848f3b52f5e2e461e34b`
<https://github.com/securesystemslab/multicompiler-clang>  
`ebe93150565b11b7a7d93b3d1127de0e2231d24e`

## gcc version
```
Configured with: --prefix=/Library/Developer/CommandLineTools/usr --with-gxx-include-dir=/usr/include/c++/4.2.1
Apple LLVM version 8.1.0 (clang-802.0.42)
Target: x86_64-apple-darwin16.5.0
Thread model: posix
InstalledDir: /Library/Developer/CommandLineTools/usr/bin
```

## CRC32 

Binary  | CRC32
------------- | -------------:
qtl| -1739688401  
qtl1| -858639722  
qtl2| -2062682194  
qtlf| 398572247  
qtls| 681487023  
qtlRAND41| -1342227216  
qtlRAND42| 1510222224  
qtlRAND43| -1151270618 


 