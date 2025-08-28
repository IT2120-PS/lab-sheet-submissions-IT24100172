##setting the directory 

setwd("C:\\Users\\it24100172\\Desktop\\it24100172")
getwd()
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
head(Delivery_Times)

hist(Delivery_Times$Delivery_Time_.minutes.,
     main = "histogram for Delivery",
     breaks = seq(20,70, length.out = 5),
     right = FALSE,
     col = "lightblue")

breaks <- seq(20,70,length.out = 10) 
hist_data <- hist(Delivery_Times$Delivery_Time_.minutes., breaks = breaks, right = FALSE, plot = FALSE)

cumulative_freq <- cumsum(hist_data$counts)

plot(breaks[-1], cumulative_freq, type = "o", col = "blue",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time",
     ylab = "Cumulative frequency")

