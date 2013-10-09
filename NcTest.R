# this Script is used to select useful attributes from POAMA


require("ncdf4")

rm(list = ls(all = TRUE))

# set file root
root <- "E:/climateData/POAMA2.4/A/"

fList <- list.files(root,recursive = TRUE)

##
i <- 1
filename <- paste0(root,fList[i])

var <- 'hr24_prcp'
ncid_o <- nc_open(filename,write=FALSE)
hr24_prcp <- ncvar_get(ncid_o,var)
#nc_close(ncid_o)
print(ncid_o)