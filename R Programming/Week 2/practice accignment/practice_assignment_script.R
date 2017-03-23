path <- getSrcDirectory(function(x){x})
# path
# dataset_url <- "http://s3.amazonaws.com/practice_assignment/diet_data.zip"
# dataPath <-  paste(path,"diet_data.zip",sep="/")
# download.file(dataset_url, dataPath)
# unzipPath <- paste(path,"diet_data", sep = "/")
# unzip(dataPath, exdir = unzipPath)
setwd(path)
#getwd()
list.files("diet_data")
andy <- read.csv("diet_data/Andy.csv")
head(andy)
length(andy$Day)
dim(andy)
str(andy)
summary(andy)
names(andy)
andy_start <- andy[which(andy[,"Day"]==1),"Weight"]
andy_start
andy_end <-andy[which(andy$Day == 30),"Weight"]
andy_end
andy_loss <- andy_start - andy_end
andy_loss
files <- list.files("diet_data", full.names = TRUE)
files
andy_david <- rbind(andy, read.csv(files[2]))
head(andy_david)
tail(andy_david)
day_25 <- andy_david[which(andy_david$Day == 25),]
day_25
dat <- data.frame()
for(i in 1:5){
    dat <- rbind(dat,read.csv(files[i]))
}
str(dat)
median(dat$Weight, na.rm = TRUE)
dat_30 <- dat[which(dat$Day == 30),]
dat_30
median(dat_30$Weight)