require("ncdf4")
rm(list = ls(all = TRUE))

#filename ="E:/IORFm_201012.nc" #"Indian Ocean Dipole", "El Nino Modoki Index

#filename = "E:/climateData/POAMA2.4/IOF_1960_2011.nc"
#filename <- "E:/climateData/POAMA2.4/A/mac_19810201.nc"
filename <- "C:/Users/DingMin/Downloads/IOA_1960_2011.nc"

#filename = "C:/Users/DingMin/Downloads/IORFm_201310.nc"
#filename = "C:/Users/DingMin/Downloads/mo_201310.nc"
#filename = "E:/TDDOWNLOAD/so_201109.nc"
#filename = "E:/TDDOWNLOAD/mo_201109.nc"
#filename = "E:/TDDOWNLOAD/mo_clim12_1981-2010.nc"
#filename = "E:/TDDOWNLOAD/heatflux_input_2011.nc"

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
tVar<-ncvar_get(nc,"nino3")
tVar[1]
#tVar<-ncvar_get(nc,"sfc_temp")
#tVar<-ncvar_get(nc,"region_index")
#tVar<-ncvar_get(nc,"region_name")
#nc<-nc_close(nc)