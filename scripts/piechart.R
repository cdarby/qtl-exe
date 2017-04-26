
setwd("~/Documents/appgenomics/qtl-exe/outputRAND43new")
L <- read.delim("qtlRAND43.9036.final",header=F,sep=" ")
L$V4=L$V1*8+L$V2

ta <- as.data.frame(table(L$V3))
reg <- data.frame("0",54161)
names(reg) <- c("Var1","Freq")
ta1 <- rbind(reg,ta)
pie(ta1$Freq,labels=ta1$Var1,col=rainbow(41),main="Random-1")

setwd("~/Documents/appgenomics/qtl-exe/outputRAND42new")
L <- read.delim("qtlRAND42.9036.final",header=F,sep=" ")
L$V4=L$V1*8+L$V2

ta <- as.data.frame(table(L$V3))
reg <- data.frame("0",54409)
names(reg) <- c("Var1","Freq")
ta1 <- rbind(reg,ta)
pie(ta1$Freq,labels=ta1$Var1,col=rainbow(36),main="Random-2")

setwd("~/Documents/appgenomics/qtl-exe/outputRAND41new")
L <- read.delim("qtlRAND41.9036.final",header=F,sep=" ")
L$V4=L$V1*8+L$V2

ta <- as.data.frame(table(L$V3))
reg <- data.frame("0",54703)
names(reg) <- c("Var1","Freq")
ta1 <- rbind(reg,ta)
pie(ta1$Freq,labels=ta1$Var1,col=rainbow(34),main="Random-3")

setwd("~/Documents/appgenomics/qtl-exe/EXoutputO0-1")
L <- read.delim("qtl0.9036.final",header=F,sep=" ")
L$V4=L$V1*8+L$V2

ta <- as.data.frame(table(L$V3))
reg <- data.frame("0",57723)
names(reg) <- c("Var1","Freq")
ta1 <- rbind(reg,ta)
pie(ta1$Freq,labels=ta1$Var1,col=rainbow(31),main="O0")

setwd("~/Documents/appgenomics/qtl-exe/EXoutputO1-1")
L <- read.delim("qtl1.9036.final",header=F,sep=" ")
L$V4=L$V1*8+L$V2

ta <- as.data.frame(table(L$V3))
reg <- data.frame("0",60570)
names(reg) <- c("Var1","Freq")
ta1 <- rbind(reg,ta)
pie(ta1$Freq,labels=ta1$Var1,col=rainbow(14),main="O1")

setwd("~/Documents/appgenomics/qtl-exe/EXoutputO2-1")
L <- read.delim("qtl2.9012.final",header=F,sep=" ")
L$V4=L$V1*8+L$V2

ta <- as.data.frame(table(L$V3))
reg <- data.frame("0",59108)
names(reg) <- c("Var1","Freq")
ta1 <- rbind(reg,ta)
pie(ta1$Freq,labels=ta1$Var1,col=rainbow(16),main="O3")

