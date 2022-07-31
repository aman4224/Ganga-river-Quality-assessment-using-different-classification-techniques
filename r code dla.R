library(MASS)
data1<-read.csv("D:/2 sem projects/set/ganga.csv",header=TRUE)
plot(data1[ , c(3,12) ], col=data1[ ,1 ] )
head(data1,5)
data1.lda <- lda(STATE ~ WQI, data=data1)
data1.lda
