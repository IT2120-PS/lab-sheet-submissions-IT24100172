setwd("C:\\Users\\thanu\\Desktop\\it24100172")
getwd()

data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)

popmn<-mean(Weight.kg.)
popmn
popsd<-sd(Weight.kg.)
popsd

##Q2
samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}
colnames(samples)=n

##sample mean

s.means<-apply(samples,2,mean)
s.means
s.sd<-apply(samples,2,sd)
s.sd

##Q3
samplemean<-mean(s.means)
samplemean

samplesd<-sd(s.means)
samplesd

popmn
samplemean

trusted=popsd/sqrt(6)
trusted
samplesd

