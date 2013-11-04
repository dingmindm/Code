# this file is used to allocate POAMA grid cell to each stations
rm(list = ls(all = TRUE))
load("D:/data/ref.station.RData")
station = ref.station$sites
dlat = c(-32.2750,-34.7576,-37.2402)
dlon = seq(141.25,148.75,2.5)
sNum = nrow(station)
cNum = 6
for (i in 1:cNum){
  assign(paste0("c",i,"Sites"),data.frame(Station=c(),Lat=c(),Lon=c(),altitude=c()))
}

for (i in 1:sNum){
  #grid cell 1
  if(station$Lon[i]>=dlon[1] && station$Lon[i]<dlon[2] && station$Lat[i]<=dlat[1] && station$Lat[i]>dlat[2])
  c1Sites = rbind(c1Sites,station[i,])
  #grid cell 2
  if(station$Lon[i]>=dlon[2] && station$Lon[i]<dlon[3] && station$Lat[i]<=dlat[1] && station$Lat[i]>dlat[2])
  c2Sites = rbind(c2Sites,station[i,])
  #grid cell 3
  if(station$Lon[i]>=dlon[3] && station$Lon[i]<dlon[4] && station$Lat[i]<=dlat[1] && station$Lat[i]>dlat[2])
  c3Sites = rbind(c3Sites,station[i,])
  #grid cell 4
  if(station$Lon[i]>=dlon[1] && station$Lon[i]<dlon[2] && station$Lat[i]<=dlat[2] && station$Lat[i]>dlat[3])
  c4Sites = rbind(c4Sites,station[i,])
  #grid cell 5
  if(station$Lon[i]>=dlon[2] && station$Lon[i]<dlon[3] && station$Lat[i]<=dlat[2] && station$Lat[i]>dlat[3])
  c5Sites = rbind(c5Sites,station[i,])
  #grid cell 6
  if(station$Lon[i]>=dlon[3] && station$Lon[i]<dlon[4] && station$Lat[i]<=dlat[2] && station$Lat[i]>dlat[3])
  c6Sites = rbind(c6Sites,station[i,])
}
save(c1Sites,c2Sites,c3Sites,c4Sites,c5Sites,c6Sites,station,ref.station,ref.station,file="StationGrid.Rdata")