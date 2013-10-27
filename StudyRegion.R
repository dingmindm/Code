# This function is used to return the start postion and grid number of study region
# the inputs are nc file name lon region and lat region
# lat unit is "degrees_north"
# lon unit is "degrees_east"

require("ncdf4")
rm(list = ls(all = TRUE))
filename = "D:/data/mo_201109.nc"   #TEMP
lonRg = c(120,130);
latRg = c(-10,0);

nc = nc_open( filename )
d = nc$dim$lat
latDim = d$vals
d = nc$dim$lon
lonDim = d$vals