#
rm(list = ls(all = TRUE))
load("D:/data/StationGrid.Rdata")
maRainfall = ref.station$monthlyAverageRainfall
#start year
sy = 1981
#end year
ey = 2011
marf = data.frame()
for(i in 1:nrow(maRainfall)){
  if(maRainfall[i,]$Year>=sy && maRainfall[i,]$Year<=ey)
    marf = rbind(marf,maRainfall[i,])
}

nagambie = data.frame(Month = marf$Month,Year = marf$Year, Nagambie = marf$Nagambie)
m1 = seq(1,nrow(marf),12)
m1nagambie = nagambie[m1,]
plot(ecdf(m1nagambie$Nagambie))
plot(density(m1nagambie$Nagambie))
#save(m1nagambie,file="M1nagambie.RData")