#load grid cell 5 for lead time 0 for month 1
rm(list = ls(all = TRUE))
m1 = seq(1,360,12)
load("D:/data/prcp_A_G.Rdata")
c5l1m1 = prcp_A_max[2,2,1,m1]
mat = matrix(1:4,2,2)
layout(mat)
plot(ecdf(c5l1m1))
plot(density(c5l1m1))
load("D:/data/M1nagambie.RData")
plot(ecdf(m1nagambie$Nagambie))
plot(density(m1nagambie$Nagambie))