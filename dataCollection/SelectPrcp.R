# this Script is used to select hr24_prcp variables from POAMA file
# hr24_prcp[lon,lat,time]
# prcp_A_max[lon,lat,leadtime,issuetime]

require("ncdf4")
rm(list = ls(all = TRUE))

# set POAMA file root
root <- "E:/climateData/POAMA2.4/A/"
fList <- list.files(root,recursive = TRUE)
gstart <- c(58,50,1)
gcount <- c(3,2,9)
fNum <- length(fList)
#fNum = 2
prcp_A_max <- array(,c(3,2,9,fNum))
for(i in 1:fNum){
  fileName <- paste0(root,fList[i])
  ncid <- nc_open(fileName,write=FALSE)
  var <- 'hr24_prcp'
  prcp_A_max[,,,i] <- ncvar_get(ncid,var,start=gstart,count=gcount)
  ncid<-nc_close(ncid)
}
save(prcp_A_max,file="prcpG.Rdata")