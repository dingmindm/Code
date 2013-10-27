require("ncdf4")
rm(list = ls(all = TRUE))
##
startYear = 1981
endYear = 2010
##
sP = (startYear-1960)*12+1
eP = (endYear-1960+1)*12+1
count = eP - sP
filename = "E:/climateData/POAMA2.4/IOF_1960_2011.nc"
nc <- nc_open( filename )
nino3 <- ncvar_get(nc,"nino3",start=sP,count=count)
nino4 <- ncvar_get(nc,"nino4",start=sP,count=count)
nino34 <- ncvar_get(nc,"nino34",start=sP,count=count)
iode <- ncvar_get(nc,"iode",start=sP,count=count)
iodw <- ncvar_get(nc,"iodw",start=sP,count=count)
iod <- ncvar_get(nc,"iod",start=sP,count=count)
gbr <- ncvar_get(nc,"gbr",start=sP,count=count)
ningaloo <- ncvar_get(nc,"ningaloo",start=sP,count=count)
cp <- ncvar_get(nc,"cp",start=sP,count=count)
wp <- ncvar_get(nc,"wp",start=sP,count=count)
ep <- ncvar_get(nc,"ep",start=sP,count=count)
emi <- ncvar_get(nc,"emi",start=sP,count=count)

save(nino3,nino4,nino34,iode,iodw,iod,file="nino_id.Rdata")
#save(nino3,nino4,nino34,iode,iodw,iod,gbr,ningaloo,cp,wp,ep,emi,file="index.Rdata")