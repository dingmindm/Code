# this function is used to select Indonesia Index SST form mo file 
# study region is 
# nino3 150-90w, 5N-5S
# nino34 170-120w, 5N-5s
# nino4 160e-150w, 5n-5s
# TEMP[lon,lat,level,time]

require("ncdf4")
rm(list = ls(all = TRUE))

root = "E:/climateData/POAMA2.4/Ocean/"
fList = list.files(root,recursive = TRUE)
fNum = length(fList)
NINO3 = c()

for(i in 1:fNum){
  fileName = paste0(root,fList[i])
  nc = nc_open( fileName )
  var = 'TEMP'
  start = c(61,79,1,1)
  count = c(6,20,1,1)
  NINO3temp = ncvar_get(nc,var,start=start,count=count)
  NINI3temp[is.na(IItemp)] = 0
  NINO3 = c(II,sum(IItemp) / 106) 
  nc_close(nc)
}
NINO3 = as.array(II)
#save(II,file="II.Rdata")