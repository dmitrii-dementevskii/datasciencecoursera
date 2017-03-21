dat = read.csv("~/git/datasciencecoursera/R Programming/Week 1/hw1_data.csv", header = TRUE)
sum(is.na(dat$Ozone))
colMeans(dat, na.rm = TRUE)
datsub <- subset(dat, Ozone > 31 & Temp > 90)
means <- colMeans(datsub, na.rm = TRUE)
means
data_sub_temp <- subset(dat, Month == 6)
means <- colMeans(data_sub_temp, na.rm = TRUE)
means
data_sub_temp <- subset(dat, Month == 5)
sub_max <- max(data_sub_temp$Ozone, na.rm = TRUE)
sub_max