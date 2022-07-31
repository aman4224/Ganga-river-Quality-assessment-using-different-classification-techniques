library(MASS)

data1<-read.csv("d:/2 sem projects/set/ganga.csv",header=TRUE)

plot(data1[ , c(3,12) ], col=data1[ ,1 ] )

head(data1)

data1.lda <- lda(STATE ~ WQI, data=data1)

data1.lda

data1.lda.p <- predict(data1.lda, newdata=data1[ , c(5,12) ]) $class

data1.lda.p

table(data1.lda.p, data1[,1])