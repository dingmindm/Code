rm(list=ls())
# load point data
load("D:/data/ref.station.RData")
names(ref.station)
station <- ref.station$sites
# compare Lat Lon, select usefull station

sNum<-length(station$Lat)
selStation <- data.frame()
# (-33.51634)>=Lat>=(-38.48167)
# (142.5)<=Lon<=(147.5)

for(i in 1:sNum){
  if(station$Lat[i]<=-32.27634 && station$Lat[i]>= -39.72167 && station$Lon[i]>=141.25 && station$Lon[i]<=148.75)
    selStation <- rbind(selStation,station[i,])
}

# select raindall from useful sites
monthlyAverageRainfall<-ref.station$monthlyAverageRainfall
a<-c(c(1,2),c(as.numeric(row.names(selStation))+2))
monthlyAverageRainfall<-subset(monthlyAverageRainfall, select = a)
# select date
rainFall<-data.frame()
L<-length(monthlyAverageRainfall[,1])

for (i in c(1:L)){
  if (monthlyAverageRainfall[i,2]>=1981)
    rainFall<-rbind(rainFall,monthlyAverageRainfall[i,])
}

save(rainFall,selStation,file="siteSel.Rdata")