# this Script is used to select useful variables from POAMA file
# then write them into new file

require("ncdf4")

rm(list = ls(all = TRUE))

# set POAMA file root
root <- "E:/climateData/POAMA2.4/A/"

fList <- list.files(root,recursive = TRUE)

fNum <- length(fList)
newFileName <- "E:/climateData/POAMA2.4/POAMA_A_24prcp.nc"
ncidNew <- nc_open(newFileName,write=TRUE)

for(i in 1:fNum){
  oriFileName <- paste0(root,fList[i])
  ncidOri <- nc_open(oriFileName,write=FALSE)
  var <- 'hr24_prcp'
  hr24_prcp <- ncvar_get(ncidOri,var)
  nc_close(ncidOri)
}