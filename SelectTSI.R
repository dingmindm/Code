# this function is used to select Tasman Sea Index SST form mo file 
# study region is 150-160E, 30s-40S
# TEMP[lon,lat,level,time]

require("ncdf4")
rm(list = ls(all = TRUE))

root = "E:/climateData/POAMA2.4/Ocean/"
fList = list.files(root,recursive = TRUE)
fNum = length(fList)
TSI = c()
for(i in 1:fNum){
  fileName = paste0(root,fList[i])
  var = 'TEMP'
  nc = nc_open( fileName )
  start = c(76,38,1,1)
  count = c(6,10,1,1)
  TSItemp = ncvar_get(nc,var,start=start,count=count)
  TSItemp[is.na(TSItemp)] = 0
  TSI = c(TSI,sum(TSItemp) / 53)
  nc_close(nc)
}
TSI = as.array(TSI)
#save(TSI,file="TSI.Rdata")