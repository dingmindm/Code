# this Script is used to select hr24_prcp variables from POAMA file
# hr24_prcp[lon,lat,time]
# start <- c(58,50,1)
# count <- c(3,3,9)

require("ncdf4")
rm(list = ls(all = TRUE))

# set POAMA file root
root <- "E:/climateData/POAMA2.4/A/"
fList <- list.files(root,recursive = TRUE)
fNum <- length(fList)

prcp_A_max <- array(,c(3,3,9,fNum))
for(i in 1:fNum){
  fileName <- paste0(root,fList[i])
  ncid <- nc_open(fileName,write=FALSE)
  var <- 'hr24_prcp'
  start <- c(58,50,1)
  count <- c(3,3,9)
  prcp_A_max[,,,i] <- ncvar_get(ncid,var,start=start,count=count)
  ncid<-nc_close(ncid)
}