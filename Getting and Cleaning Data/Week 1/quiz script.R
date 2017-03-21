dat = read.csv("~/git/datasciencecoursera/Getting and Cleaning Data/Week 1/getdata%2Fdata%2Fss06hid.csv", header = TRUE)
datsub <- subset(dat, VAL == 24)
library(xlsx)
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
f <- file.path(getwd(), "DATA.gov_NGAP.xlsx")
download.file(url, f, mode = "wb")
rows <- 18:23
cols <- 7:15
dat <- read.xlsx(f, 1, colIndex = cols, rowIndex = rows)
sum(dat$Zip * dat$Ext, na.rm = T)
cols <- 7:15
rows <- 18:23
dat <- read.xlsx("~/git/datasciencecoursera/Getting and Cleaning Data/Week 1/getdataFdataFDATA.gov_NGAP.xlsx",colIndex <- cols, rowIndex = rows, ,startRow=18, endRow=23)
sum(dat$Zip*dat$Ext,na.rm=T)