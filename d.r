# show the dimension information of selected NC file
filename <- "E:/climateData/POAMA2.4/A/mac_19810101.nc"
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