require("ncdf4")
rm(list = ls(all = TRUE))

##
#filename = "D:/data/mac_19810101.nc" #24hr_prep
#filename = "D:/data/mo_201109.nc"   #TEMP
filename = "E:/climateData/POAMA2.4/IOF_1960_2011.nc" #SST anomaly
##

#filename ="D:/data/heatflux_input_2011.nc"
#filename = "D:/data/IORFm_201109.nc"
#filename = "D:/data/mo_201109_out.nc"
#filename = "D:/data/mo_201109new_run.nc"
#filename = "D:/data/mo_201310.nc"
#filename = "D:/data/mo_clim12_1981-2010.nc" #TEMP 180*196*25
#filename = "D:/data/so_201109.nc" #TEMP 180*196*25 1/year

# show the dimension information of selected NC file
nc <- nc_open( filename )
print(paste("File",filename,"contains",nc$ndims,"dimensions"))
for( i in 1:nc$ndims ) {
    print(paste("Here is information about dimension number",i,":"))
    d <- nc$dim[[i]]
    print(paste(" Name :",d$name))
    print(paste(" Units :",d$units))
    print(paste(" Length:",d$len))
    print(" Values:")
    print(d$vals)
    print(paste(" Unlimited:",d$unlim))
  }
print(nc)
tVar<-ncvar_get(nc,"TEMP")
dim(tVar)
#tVar<-ncvar_get(nc,"sfc_temp")
#tVar<-ncvar_get(nc,"region_index")
#tVar<-ncvar_get(nc,"region_name")
#nc<-nc_close(nc)