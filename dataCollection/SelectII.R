# this function is used to select Indonesia Index SST form mo file 
# study region is 120-130E, 0N-10S
# TEMP[lon,lat,level,time]

require("ncdf4")
rm(list = ls(all = TRUE))

root = "E:/climateData/POAMA2.4/Ocean/"
fList = list.files(root,recursive = TRUE)
fNum = length(fList)
II = c()

for(i in 1:fNum){
  fileName = paste0(root,fList[i])
  nc = nc_open( fileName )
  var = 'TEMP'
  start = c(61,79,1,1)
  count = c(6,20,1,1)
  IItemp = ncvar_get(nc,var,start=start,count=count)
  IItemp[is.na(IItemp)] = 0
  II = c(II,sum(IItemp) / 106) 
  nc_close(nc)
}
II = as.array(II)
#save(II,file="II.Rdata")