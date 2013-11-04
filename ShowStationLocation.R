# this script is used to show the location of each observartion station
rm(list = ls(all = TRUE))
load("D:/data/StationGrid.Rdata")
load("D:/data/ref.station.RData")
station = ref.station$sites
lat = station[,2]
lon = station[,3]
plot(lon,lat,ylim=c(-40,-30),xlim=c(140,150))
#dlat = c(-33.51634,-35.99901,-38.48167)
#dlon = c(142.5,145,147.5)
dlat = c(-32.2750,-34.7576,-37.2402,-39.7228)
dlon = seq(141.25,148.75,2.5)
abline(v=dlon,col = 'red')
abline(h=dlat,col = 'red')
i = 4
x = c5Sites$Lon[i]
y = c5Sites$Lat[i]
points(x,y,col = "red")