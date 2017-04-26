setwd("~/Documents/appgenomics/qtl-exe")
#EXoutputO0-1

D <- read.delim("EXoutputO0-1/dpo",header=F,sep=" ")
D$V4=D$V1*8+D$V2
J <- read.delim("EXoutputO0-1/jarque",header=F,sep=" ")
J$V4=J$V1*8+J$V2
M <- read.delim("EXoutputO0-1/mean",header=F,sep=" ")
M$V4=M$V1*8+M$V2
K <- read.delim("EXoutputO0-1/sskew",header=F,sep=" ")
K$V4=K$V1*8+K$V2
S <- read.delim("EXoutputO0-1/sstdev",header=F,sep=" ")
S$V4=S$V1*8+S$V2
L <- read.delim("EXoutputO0-1/qtl0.9036.final",header=F,sep=" ")
L$V4=L$V1*8+L$V2
#[1]   1   2  16  18  32  81 124 126 128 130 132 133 134 136 137
#[16] 138 139 152 154 156 160 192 217 224 226 240 248 252 254 255

D <- read.delim("EXoutputO1-1/dpo",header=F,sep=" ")
D$V4=D$V1*8+D$V2
J <- read.delim("EXoutputO1-1/jarque",header=F,sep=" ")
J$V4=J$V1*8+J$V2
M <- read.delim("EXoutputO1-1/mean",header=F,sep=" ")
M$V4=M$V1*8+M$V2
K <- read.delim("EXoutputO1-1/sskew",header=F,sep=" ")
K$V4=K$V1*8+K$V2
S <- read.delim("EXoutputO1-1/sstdev",header=F,sep=" ")
S$V4=S$V1*8+S$V2
L <- read.delim("EXoutputO1-1/qtl1.9036.final",header=F,sep=" ")
L$V4=L$V1*8+L$V2
#[1]   1   2  19 124 126 132 133 134 136 137 138 139 140

D <- read.delim("EXoutputO2-1/dpo",header=F,sep=" ")
D$V4=D$V1*8+D$V2
J <- read.delim("EXoutputO2-1/jarque",header=F,sep=" ")
J$V4=J$V1*8+J$V2
M <- read.delim("EXoutputO2-1/mean",header=F,sep=" ")
M$V4=M$V1*8+M$V2
K <- read.delim("EXoutputO2-1/sskew",header=F,sep=" ")
K$V4=K$V1*8+K$V2
S <- read.delim("EXoutputO2-1/sstdev",header=F,sep=" ")
S$V4=S$V1*8+S$V2
L <- read.delim("EXoutputO2-1/qtl2.9012.final",header=F,sep=" ")
L$V4=L$V1*8+L$V2

# [1]   1   2  19  20  55 111 124 126 132 133 134 136 137 138 139


setwd("~/Documents/appgenomics/qtl-exe/outputRAND43new")
D <- read.delim("dpo",header=F,sep=" ")
D$V4=D$V1*8+D$V2
J <- read.delim("jarque",header=F,sep=" ")
J$V4=J$V1*8+J$V2
M <- read.delim("mean",header=F,sep=" ")
M$V4=M$V1*8+M$V2
K <- read.delim("sskew",header=F,sep=" ")
K$V4=K$V1*8+K$V2
S <- read.delim("sstdev",header=F,sep=" ")
S$V4=S$V1*8+S$V2
L <- read.delim("qtlRAND43.9036.final",header=F,sep=" ")
L$V4=L$V1*8+L$V2
# [1]   1   2  19  24  31  33  64  71  80  82  87  96 112 115 124 126 128 132 133 134 136 137 138 139 142 159 192 193 195
#[30] 209 219 221 224 231 234 240 248 252 254 255


setwd("~/Documents/appgenomics/qtl-exe/outputRAND42new")
D <- read.delim("dpo",header=F,sep=" ")
D$V4=D$V1*8+D$V2
J <- read.delim("jarque",header=F,sep=" ")
J$V4=J$V1*8+J$V2
M <- read.delim("mean",header=F,sep=" ")
M$V4=M$V1*8+M$V2
K <- read.delim("sskew",header=F,sep=" ")
K$V4=K$V1*8+K$V2
S <- read.delim("sstdev",header=F,sep=" ")
S$V4=S$V1*8+S$V2
L <- read.delim("qtlRAND42.9036.final",header=F,sep=" ")
L$V4=L$V1*8+L$V2
#[1]   1   2  15  19  24  35  91  96 112 124 126 128 132 133 134 136 137 138 139 141 155 156 163 179 191 192 208 218 224
#[30] 236 240 248 252 254 255

setwd("~/Documents/appgenomics/qtl-exe/outputRAND41new")
D <- read.delim("dpo",header=F,sep=" ")
D$V4=D$V1*8+D$V2
J <- read.delim("jarque",header=F,sep=" ")
J$V4=J$V1*8+J$V2
M <- read.delim("mean",header=F,sep=" ")
M$V4=M$V1*8+M$V2
K <- read.delim("sskew",header=F,sep=" ")
K$V4=K$V1*8+K$V2
S <- read.delim("sstdev",header=F,sep=" ")
S$V4=S$V1*8+S$V2
L <- read.delim("qtlRAND41.9036.final",header=F,sep=" ")
L$V4=L$V1*8+L$V2
#[1]   1   2  18  24  62  78  91  96 112 124 126 128 131 132 133 134 136 137 138 139 143 160 167 186 192 224 227 240 245
#[30] 248 252 254 255

####Plotting rand1 data####
par(mfrow=c(2,4))
#Rare
plot(L$V1[L$V3==2],(L$V4[L$V3==2] %% 100),col="red",pch=0,xlim=c(0,9036),ylim=c(0,100)) #No such file or directory
points(L$V1[L$V3==19],(L$V4[L$V3==19] %% 100),col="green",pch=0) 
points(L$V1[L$V3==24],(L$V4[L$V3==24] %% 100),col="pink",pch=0)
points(L$V1[L$V3==31],(L$V4[L$V3==31] %% 100),col="black",pch=0)
points(L$V1[L$V3==33],(L$V4[L$V3==33] %% 100),col="brown",pch=0)
points(L$V1[L$V3==64],(L$V4[L$V3==64] %% 100),col="blue",pch=0)
points(L$V1[L$V3==71],(L$V4[L$V3==71] %% 100),col="red",pch=8)
points(L$V1[L$V3==80],(L$V4[L$V3==80] %% 100),col="green",pch=8)
points(L$V1[L$V3==82],(L$V4[L$V3==82] %% 100),col="pink",pch=8)
points(L$V1[L$V3==87],(L$V4[L$V3==87] %% 100),col="black",pch=8)
points(L$V1[L$V3==96],(L$V4[L$V3==96] %% 100),col="brown",pch=8)
points(L$V1[L$V3==112],(L$V4[L$V3==112] %% 100),col="blue",pch=8)
points(L$V1[L$V3==115],(L$V4[L$V3==115] %% 100),col="purple",pch=8)
points(L$V1[L$V3==128],(L$V4[L$V3==128] %% 100),col="purple",pch=0) #exit() not in range 0-255 (bash)
points(L$V1[L$V3==142],(L$V4[L$V3==142] %% 100),col="red",pch=1) 
points(L$V1[L$V3==159],(L$V4[L$V3==159] %% 100),col="green",pch=1) 
points(L$V1[L$V3==192],(L$V4[L$V3==192] %% 100),col="blue",pch=1) 
points(L$V1[L$V3==193],(L$V4[L$V3==193] %% 100),col="pink",pch=1) 
points(L$V1[L$V3==195],(L$V4[L$V3==195] %% 100),col="black",pch=1)
points(L$V1[L$V3==209],(L$V4[L$V3==209] %% 100),col="purple",pch=1) 
points(L$V1[L$V3==219],(L$V4[L$V3==219] %% 100),col="red",pch=2) 
points(L$V1[L$V3==221],(L$V4[L$V3==221] %% 100),col="blue",pch=2) 
points(L$V1[L$V3==224],(L$V4[L$V3==224] %% 100),col="green",pch=2) 
points(L$V1[L$V3==231],(L$V4[L$V3==231] %% 100),col="pink",pch=2) #?
points(L$V1[L$V3==234],(L$V4[L$V3==234] %% 100),col="black",pch=2) #?
points(L$V1[L$V3==240],(L$V4[L$V3==240] %% 100),col="purple",pch=2) #?
points(L$V1[L$V3==248],(L$V4[L$V3==248] %% 100),col="gray",pch=2) #?
points(L$V1[L$V3==252],(L$V4[L$V3==252] %% 100),col="gray",pch=8) #?
points(L$V1[L$V3==254],(L$V4[L$V3==254] %% 100),col="brown",pch=2) #?
points(L$V1[L$V3==255],(L$V4[L$V3==255] %% 100),col="orange",pch=0) #Exit status int, but out of range

#Common (divided into disjoint-ish plots)
plot(L$V1[L$V3==1],(L$V4[L$V3==1] %% 100),col="blue",xlim=c(0,9036),pch=0) #Operation not permitted 
points(L$V1[L$V3==126],(L$V4[L$V3==126] %% 100),col="red",pch=0) # Command cannot execute (bash)
points(L$V1[L$V3==136],(L$V4[L$V3==136] %% 100),col="black",pch=0) #Signal 8 (Floating-point exception)
points(L$V1[L$V3==134],(L$V4[L$V3==134] %% 100),col="green",pch=0) #Signal 6 (Abort signal)

plot(L$V1[L$V3==124],(L$V4[L$V3==124] %% 100),col="blue",pch=1,xlim=c(0,9036),ylim=c(0,100)) #?
points(L$V1[L$V3==137],(L$V4[L$V3==137] %% 100),col="green",pch=1) #Signal 9 (Kill signal)

plot(L$V1[L$V3==132],(L$V4[L$V3==132] %% 100),col="purple",pch=1,xlim=c(0,9036),ylim=c(0,100)) #Signal 4 (Illegal instruction)

plot(L$V1[L$V3==133],(L$V4[L$V3==133] %% 100),col="green",pch=3,xlim=c(0,9036),ylim=c(0,100)) #Signal 5 (Core: trace/breakpoint trap)

plot(L$V1[L$V3==138],(L$V4[L$V3==138] %% 100),col="red",pch=1,xlim=c(0,9036),ylim=c(0,100)) #Signal 10 (Bad memory access -- bus error)

plot(L$V1[L$V3==139],(L$V4[L$V3==139] %% 100),col="black",pch=1,xlim=c(0,9036),ylim=c(0,100)) #Signal 11 (Invalid memory reference)

####Plotting rand2 data####
par(mfrow=c(2,4))
#Rare
plot(L$V1[L$V3==2],(L$V4[L$V3==2] %% 100),col="red",pch=0,xlim=c(0,9036),ylim=c(0,100)) #No such file or directory
points(L$V1[L$V3==15],(L$V4[L$V3==15] %% 100),col="black",pch=0)
points(L$V1[L$V3==19],(L$V4[L$V3==19] %% 100),col="green",pch=0) 
points(L$V1[L$V3==24],(L$V4[L$V3==24] %% 100),col="pink",pch=0)
points(L$V1[L$V3==35],(L$V4[L$V3==35] %% 100),col="brown",pch=0)
points(L$V1[L$V3==91],(L$V4[L$V3==91] %% 100),col="brown",pch=8)
points(L$V1[L$V3==96],(L$V4[L$V3==96] %% 100),col="red",pch=8)
points(L$V1[L$V3==112],(L$V4[L$V3==112] %% 100),col="blue",pch=8)
points(L$V1[L$V3==128],(L$V4[L$V3==128] %% 100),col="purple",pch=0) #exit() not in range 0-255 (bash)
points(L$V1[L$V3==141],(L$V4[L$V3==141] %% 100),col="red",pch=1) 
points(L$V1[L$V3==155],(L$V4[L$V3==155] %% 100),col="green",pch=1) 
points(L$V1[L$V3==156],(L$V4[L$V3==156] %% 100),col="pink",pch=8) 
points(L$V1[L$V3==163],(L$V4[L$V3==163] %% 100),col="black",pch=8)
points(L$V1[L$V3==179],(L$V4[L$V3==179] %% 100),col="pink",pch=1) 
points(L$V1[L$V3==191],(L$V4[L$V3==191] %% 100),col="black",pch=1)
points(L$V1[L$V3==192],(L$V4[L$V3==192] %% 100),col="blue",pch=1) 
points(L$V1[L$V3==208],(L$V4[L$V3==208] %% 100),col="purple",pch=1) 
points(L$V1[L$V3==218],(L$V4[L$V3==218] %% 100),col="red",pch=2) 
points(L$V1[L$V3==224],(L$V4[L$V3==224] %% 100),col="green",pch=2) 
points(L$V1[L$V3==236],(L$V4[L$V3==236] %% 100),col="black",pch=2) #?
points(L$V1[L$V3==240],(L$V4[L$V3==240] %% 100),col="purple",pch=2) #?
points(L$V1[L$V3==248],(L$V4[L$V3==248] %% 100),col="gray",pch=2) #?
points(L$V1[L$V3==252],(L$V4[L$V3==252] %% 100),col="gray",pch=8) #?
points(L$V1[L$V3==254],(L$V4[L$V3==254] %% 100),col="brown",pch=2) #?
points(L$V1[L$V3==255],(L$V4[L$V3==255] %% 100),col="orange",pch=0) #Exit status int, but out of range

#Common (divided into disjoint-ish plots)
plot(L$V1[L$V3==1],(L$V4[L$V3==1] %% 100),col="blue",xlim=c(0,9036),pch=0) #Operation not permitted 
points(L$V1[L$V3==126],(L$V4[L$V3==126] %% 100),col="red",pch=0) # Command cannot execute (bash)
points(L$V1[L$V3==136],(L$V4[L$V3==136] %% 100),col="black",pch=0) #Signal 8 (Floating-point exception)
points(L$V1[L$V3==134],(L$V4[L$V3==134] %% 100),col="green",pch=0) #Signal 6 (Abort signal)

plot(L$V1[L$V3==124],(L$V4[L$V3==124] %% 100),col="blue",pch=1,xlim=c(0,9036),ylim=c(0,100)) #?
points(L$V1[L$V3==137],(L$V4[L$V3==137] %% 100),col="green",pch=1) #Signal 9 (Kill signal)

plot(L$V1[L$V3==132],(L$V4[L$V3==132] %% 100),col="purple",pch=1,xlim=c(0,9036),ylim=c(0,100)) #Signal 4 (Illegal instruction)

plot(L$V1[L$V3==133],(L$V4[L$V3==133] %% 100),col="green",pch=3,xlim=c(0,9036),ylim=c(0,100)) #Signal 5 (Core: trace/breakpoint trap)

plot(L$V1[L$V3==138],(L$V4[L$V3==138] %% 100),col="red",pch=1,xlim=c(0,9036),ylim=c(0,100)) #Signal 10 (Bad memory access -- bus error)

plot(L$V1[L$V3==139],(L$V4[L$V3==139] %% 100),col="black",pch=1,xlim=c(0,9036),ylim=c(0,100)) #Signal 11 (Invalid memory reference)
####Plotting rand3 data####
par(mfrow=c(2,4))
#Rare
plot(L$V1[L$V3==2],(L$V4[L$V3==2] %% 100),col="red",pch=0,xlim=c(0,9036),ylim=c(0,100)) #No such file or directory
points(L$V1[L$V3==18],(L$V4[L$V3==18] %% 100),col="green",pch=0) 
points(L$V1[L$V3==62],(L$V4[L$V3==62] %% 100),col="blue",pch=0)
points(L$V1[L$V3==78],(L$V4[L$V3==78] %% 100),col="red",pch=8)
points(L$V1[L$V3==91],(L$V4[L$V3==91] %% 100),col="black",pch=8)
points(L$V1[L$V3==96],(L$V4[L$V3==96] %% 100),col="brown",pch=8)
points(L$V1[L$V3==112],(L$V4[L$V3==112] %% 100),col="blue",pch=8)
points(L$V1[L$V3==128],(L$V4[L$V3==128] %% 100),col="purple",pch=0) #exit() not in range 0-255 (bash)
points(L$V1[L$V3==131],(L$V4[L$V3==131] %% 100),col="purple",pch=8)
points(L$V1[L$V3==143],(L$V4[L$V3==143] %% 100),col="red",pch=1) 
points(L$V1[L$V3==160],(L$V4[L$V3==160] %% 100),col="green",pch=1) 
points(L$V1[L$V3==167],(L$V4[L$V3==167] %% 100),col="green",pch=8) 
points(L$V1[L$V3==192],(L$V4[L$V3==192] %% 100),col="blue",pch=1) 
points(L$V1[L$V3==224],(L$V4[L$V3==224] %% 100),col="green",pch=2) 
points(L$V1[L$V3==227],(L$V4[L$V3==227] %% 100),col="pink",pch=2) #?
points(L$V1[L$V3==240],(L$V4[L$V3==240] %% 100),col="purple",pch=2) #?
points(L$V1[L$V3==245],(L$V4[L$V3==245] %% 100),col="black",pch=2) #?
points(L$V1[L$V3==248],(L$V4[L$V3==248] %% 100),col="gray",pch=2) #?
points(L$V1[L$V3==252],(L$V4[L$V3==252] %% 100),col="gray",pch=8) #?
points(L$V1[L$V3==254],(L$V4[L$V3==254] %% 100),col="brown",pch=2) #?
points(L$V1[L$V3==255],(L$V4[L$V3==255] %% 100),col="orange",pch=0) #Exit status int, but out of range

#Common (divided into disjoint-ish plots)
plot(L$V1[L$V3==1],(L$V4[L$V3==1] %% 100),col="blue",xlim=c(0,9036),pch=0) #Operation not permitted 
points(L$V1[L$V3==126],(L$V4[L$V3==126] %% 100),col="red",pch=0) # Command cannot execute (bash)
points(L$V1[L$V3==136],(L$V4[L$V3==136] %% 100),col="black",pch=0) #Signal 8 (Floating-point exception)
points(L$V1[L$V3==134],(L$V4[L$V3==134] %% 100),col="green",pch=0) #Signal 6 (Abort signal)

plot(L$V1[L$V3==124],(L$V4[L$V3==124] %% 100),col="blue",pch=1,xlim=c(0,9036),ylim=c(0,100)) #?
points(L$V1[L$V3==137],(L$V4[L$V3==137] %% 100),col="green",pch=1) #Signal 9 (Kill signal)

plot(L$V1[L$V3==132],(L$V4[L$V3==132] %% 100),col="purple",pch=1,xlim=c(0,9036),ylim=c(0,100)) #Signal 4 (Illegal instruction)

plot(L$V1[L$V3==133],(L$V4[L$V3==133] %% 100),col="green",pch=3,xlim=c(0,9036),ylim=c(0,100)) #Signal 5 (Core: trace/breakpoint trap)

plot(L$V1[L$V3==138],(L$V4[L$V3==138] %% 100),col="red",pch=1,xlim=c(0,9036),ylim=c(0,100)) #Signal 10 (Bad memory access -- bus error)

plot(L$V1[L$V3==139],(L$V4[L$V3==139] %% 100),col="black",pch=1,xlim=c(0,9036),ylim=c(0,100)) #Signal 11 (Invalid memory reference)

####Plotting O0 data####
par(mfrow=c(2,4))
#Rare
plot(L$V1[L$V3==2],(L$V4[L$V3==2] %% 100),col="red",pch=0,xlim=c(0,9036),ylim=c(0,100)) #No such file or directory
points(L$V1[L$V3==16],(L$V4[L$V3==16] %% 100),col="green",pch=0) #Device/resource busy
points(L$V1[L$V3==18],(L$V4[L$V3==18] %% 100),col="pink",pch=0) #Cross-device link
points(L$V1[L$V3==32],(L$V4[L$V3==32] %% 100),col="black",pch=0) #Broken pipe
points(L$V1[L$V3==81],(L$V4[L$V3==81] %% 100),col="blue",pch=0) #Need authenticator
points(L$V1[L$V3==128],(L$V4[L$V3==128] %% 100),col="purple",pch=0) #exit() not in range 0-255 (bash)
points(L$V1[L$V3==130],(L$V4[L$V3==130] %% 100),col="red",pch=1) #Signal 2 (Ctrl-C)
points(L$V1[L$V3==154],(L$V4[L$V3==154] %% 100),col="green",pch=1) #Signal 28 (Virtual alarm clock)
points(L$V1[L$V3==156],(L$V4[L$V3==156] %% 100),col="pink",pch=1) #Signal 28 (Virtual alarm clock)
points(L$V1[L$V3==160],(L$V4[L$V3==160] %% 100),col="black",pch=1) #Signal 32 ?
points(L$V1[L$V3==192],(L$V4[L$V3==192] %% 100),col="blue",pch=1) #?
points(L$V1[L$V3==217],(L$V4[L$V3==217] %% 100),col="purple",pch=1) #?
points(L$V1[L$V3==224],(L$V4[L$V3==224] %% 100),col="red",pch=2) #?
points(L$V1[L$V3==226],(L$V4[L$V3==226] %% 100),col="blue",pch=2) #?
points(L$V1[L$V3==240],(L$V4[L$V3==240] %% 100),col="green",pch=2) #?
points(L$V1[L$V3==248],(L$V4[L$V3==248] %% 100),col="pink",pch=2) #?
points(L$V1[L$V3==252],(L$V4[L$V3==252] %% 100),col="black",pch=2) #?
points(L$V1[L$V3==254],(L$V4[L$V3==254] %% 100),col="purple",pch=2) #?
points(L$V1[L$V3==255],(L$V4[L$V3==255] %% 100),col="orange",pch=0) #Exit status int, but out of range

#Common (divided into disjoint-ish plots)
plot(L$V1[L$V3==1],(L$V4[L$V3==1] %% 100),col="blue",xlim=c(0,9036),pch=0) #Operation not permitted 
points(L$V1[L$V3==126],(L$V4[L$V3==126] %% 100),col="red",pch=0) # Command cannot execute (bash)
points(L$V1[L$V3==136],(L$V4[L$V3==136] %% 100),col="black",pch=0) #Signal 8 (Floating-point exception)
points(L$V1[L$V3==134],(L$V4[L$V3==134] %% 100),col="green",pch=0) #Signal 6 (Abort signal)

plot(L$V1[L$V3==124],(L$V4[L$V3==124] %% 100),col="blue",pch=1,xlim=c(0,9036),ylim=c(0,100)) #?
points(L$V1[L$V3==137],(L$V4[L$V3==137] %% 100),col="green",pch=1) #Signal 9 (Kill signal)

plot(L$V1[L$V3==132],(L$V4[L$V3==132] %% 100),col="purple",pch=1,xlim=c(0,9036),ylim=c(0,100)) #Signal 4 (Illegal instruction)

plot(L$V1[L$V3==133],(L$V4[L$V3==133] %% 100),col="green",pch=3,xlim=c(0,9036),ylim=c(0,100)) #Signal 5 (Core: trace/breakpoint trap)

plot(L$V1[L$V3==138],(L$V4[L$V3==138] %% 100),col="red",pch=1,xlim=c(0,9036),ylim=c(0,100)) #Signal 10 (Bad memory access -- bus error)

plot(L$V1[L$V3==139],(L$V4[L$V3==139] %% 100),col="black",pch=1,xlim=c(0,9036),ylim=c(0,100)) #Signal 11 (Invalid memory reference)

####Plotting O1 data####
#Rare
plot(L$V1[L$V3==2],(L$V4[L$V3==2] %% 100),col="red",pch=0,xlim=c(0,9036),ylim=c(0,100)) #No such file or directory
points(L$V1[L$V3==19],(L$V4[L$V3==19] %% 100),col="purple",pch=0) #Operation not supported by device
points(L$V1[L$V3==140],(L$V4[L$V3==140] %% 100),col="black",pch=5) #Signal 12 (Bad system call?)

#Common (divided into disjoint-ish plots)
plot(L$V1[L$V3==1],(L$V4[L$V3==1] %% 100),col="blue",xlim=c(0,9036),pch=1,ylim=c(0,100)) #Operation not permitted 
points(L$V1[L$V3==126],(L$V4[L$V3==126] %% 100),col="red",pch=1) # Command cannot execute (bash)
points(L$V1[L$V3==134],(L$V4[L$V3==134] %% 100),col="green",pch=1) #Signal 6 (Abort signal)
points(L$V1[L$V3==136],(L$V4[L$V3==136] %% 100),col="black",pch=1) #Signal 8 (Floating-point exception)

plot(L$V1[L$V3==124],(L$V4[L$V3==124] %% 100),col="blue",pch=1,xlim=c(0,9036),ylim=c(0,100)) #?
points(L$V1[L$V3==137],(L$V4[L$V3==137] %% 100),col="green",pch=1) #Signal 9 (Kill signal)

plot(L$V1[L$V3==132],(L$V4[L$V3==132] %% 100),col="purple",pch=1,xlim=c(0,9036),ylim=c(0,100)) #Signal 4 (Illegal instruction)

plot(L$V1[L$V3==133],(L$V4[L$V3==133] %% 100),col="green",pch=3,xlim=c(0,9036),ylim=c(0,100)) #Signal 5 (Core: trace/breakpoint trap)

plot(L$V1[L$V3==138],(L$V4[L$V3==138] %% 100),col="red",pch=1,xlim=c(0,9036),ylim=c(0,100)) #Signal 10 (Bad memory access -- bus error)

plot(L$V1[L$V3==139],(L$V4[L$V3==139] %% 100),col="black",pch=1,xlim=c(0,9036),ylim=c(0,100)) #Signal 11 (Invalid memory reference)

####Plotting O2 data####
#Rare
plot(L$V1[L$V3==2],(L$V4[L$V3==2] %% 100),col="red",pch=0,xlim=c(0,9012),ylim=c(0,100)) #No such file or directory
points(L$V1[L$V3==20],(L$V4[L$V3==20] %% 100),col="green",pch=0) #Not a directory
points(L$V1[L$V3==19],(L$V4[L$V3==19] %% 100),col="purple",pch=0) #Operation not supported by device
points(L$V1[L$V3==55],(L$V4[L$V3==55] %% 100),col="black",pch=0) #No buffer space available
points(L$V1[L$V3==111],(L$V4[L$V3==111] %% 100),col="pink",pch=0) #?
points(L$V1[L$V3==136],(L$V4[L$V3==136] %% 100),col="black",pch=1) #Signal 8 (Floating-point exception)

#Common (divided into disjoint-ish plots)
plot(L$V1[L$V3==1],(L$V4[L$V3==1] %% 100),col="blue",xlim=c(0,9012),pch=1,ylim=c(0,100)) #Operation not permitted 
points(L$V1[L$V3==126],(L$V4[L$V3==126] %% 100),col="red",pch=1) # Command cannot execute (bash)
points(L$V1[L$V3==134],(L$V4[L$V3==134] %% 100),col="green",pch=1) #Signal 6 (Abort signal)
points(L$V1[L$V3==136],(L$V4[L$V3==136] %% 100),col="black",pch=1) #Signal 8 (Floating-point exception)

plot(L$V1[L$V3==124],(L$V4[L$V3==124] %% 100),col="blue",pch=1,xlim=c(0,9012),ylim=c(0,100)) #?
points(L$V1[L$V3==137],(L$V4[L$V3==137] %% 100),col="green",pch=1) #Signal 9 (Kill signal)

plot(L$V1[L$V3==132],(L$V4[L$V3==132] %% 100),col="purple",pch=1,xlim=c(0,9012),ylim=c(0,100)) #Signal 4 (Illegal instruction)

plot(L$V1[L$V3==133],(L$V4[L$V3==133] %% 100),col="green",pch=3,xlim=c(0,9012),ylim=c(0,100)) #Signal 5 (Core: trace/breakpoint trap)

plot(L$V1[L$V3==138],(L$V4[L$V3==138] %% 100),col="red",pch=1,xlim=c(0,9012),ylim=c(0,100)) #Signal 10 (Bad memory access -- bus error)

plot(L$V1[L$V3==139],(L$V4[L$V3==139] %% 100),col="black",pch=1,xlim=c(0,9012),ylim=c(0,100)) #Signal 11 (Invalid memory reference)


####Outliers####
#include NA
outliers=vector()
outliers$M <-M$V3<(-1000) | M$V3>1000
outliers$J <-J$V3<(0.00000017)
outliers$D <-D$V3<(0.00000017)
outliers$S <-S$V3>1000
outliers$K <-K$V3<(-10) | K$V3>10

par(mfrow=c(1,2))
plot((M)$V1[outliers$M==T],((M)$V4[outliers$M==T]%%100),xlim=c(0,9012),ylim=c(0,100),col="black")
points((J)$V1[outliers$J==T],((J)$V4[outliers$J==T]%%100),col="green")
#points(M$V1[outliers$D==T],(M$V4[outliers$D==T]%%100),col="blue",pch=4) #same as J
points((S)$V1[outliers$S==T],((S)$V4[outliers$S==T]%%100),col="blue",pch=4)
points((K)$V1[outliers$K==T],((K)$V4[outliers$K==T]%%100),col="red",pch=3)
legend("bottomright",legend=c("mean","non-normality","stdev","skew"),pch=c(1,1,4,3),col=c("black","green","blue","red"))

outliers$M <-na.omit(M$V3)<(-.035) | na.omit(M$V3)>.035
outliers$J <-na.omit(J$V3)<(0.00017)
outliers$D <-na.omit(D$V3)<(0.0000017)
outliers$S <-na.omit(S$V3)>1.03
outliers$K <-na.omit(K$V3)<(-.13) | na.omit(K$V3)>.13

#outliers$A <- outliers$M | outliers$J | outliers$D | outliers$S | outliers$K
#length(outliers$A[outliers$A==T])

plot(na.omit(M)$V1[outliers$M==T],(na.omit(M)$V4[outliers$M==T]%%100),xlim=c(0,9012),ylim=c(0,100),col="black")
points(na.omit(J)$V1[outliers$J==T],(na.omit(J)$V4[outliers$J==T]%%100),col="green")
#points(M$V1[outliers$D==T],(M$V4[outliers$D==T]%%100),col="blue",pch=4) #same as J
points(na.omit(S)$V1[outliers$S==T],(na.omit(S)$V4[outliers$S==T]%%100),col="blue",pch=4)
points(na.omit(K)$V1[outliers$K==T],(na.omit(K)$V4[outliers$K==T]%%100),col="red",pch=3)
legend("bottomright",legend=c("mean","non-normality","stdev","skew"),pch=c(1,1,4,3),col=c("black","green","blue","red"))



outliers=vector()

outliers$M <- (M$V3<(-0.035) | M$V3>0.035) & !is.na(M$V3)
outliers$J <-(J$V3<(0.00017)) & !is.na(J$V3)
outliers$S <-(S$V3)>1.03 & !is.na(S$V3)
outliers$K <-(K$V3<(-.13) | K$V3>.13) & !is.na(K$V3)

outliers$A <- outliers$M | outliers$J | outliers$S | outliers$K
length(outliers$A[outliers$A==T])

outliers$M <- is.na(M$V3)
outliers$J <- is.na(J$V3)
outliers$S <- is.na(S$V3)
outliers$K <- is.na(K$V3)

outliers$A <- outliers$M | outliers$J | outliers$S | outliers$K
length(outliers$A[outliers$A==T])

outliers$M <- (M$V3<(-1000) | M$V3>1000) & !is.na(M$V3)
outliers$J <-(J$V3<(0.00000017)) & !is.na(J$V3)
outliers$S <-(S$V3)>1000 & !is.na(S$V3)
outliers$K <-(K$V3<(-10) | K$V3>10) & !is.na(K$V3)

outliers$A <- outliers$M | outliers$J | outliers$S | outliers$K
length(outliers$A[outliers$A==T])

