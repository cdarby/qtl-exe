setwd("~/Documents/appgenomics/qtl-exe")
setwd("~/Documents/appgenomics/qtl-exe/iter500-6")
X <- read.delim("linecounts.final",header=F, strip.white=T,sep="")
hist(X$V1[X$V1<=500],ylim=c(0,280),breaks=seq(0.5,500.5,25),main="Robustness to multiple edits",xlab="Number of edits survived before crash")
length(X$V1[X$V1==500])

