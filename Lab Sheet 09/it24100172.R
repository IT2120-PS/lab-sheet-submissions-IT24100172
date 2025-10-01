setwd("C:\\Users\\thanu\\Desktop\\it24100172")
getwd()

#Q1
y <- rnorm(25, mean = 45, sd = 2)
print(y)

#Q2
t.test(y, mu=46 , alternative="less")

