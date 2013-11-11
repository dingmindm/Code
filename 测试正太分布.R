#rnorm(n , mean , sd) 来产生 n 个来自于均值为 mean，标准差为 sd 的高斯（正态）分布的数
rm(list = ls(all = TRUE))
load("D:/data/c5l1m1.Rdata")
load("D:/data/M1nagambie.RData")

a = rnorm(100,2,1)
mat = matrix(1:6,2,3)

layout(mat)
# 
plot(ecdf(a))
plot(density(a))
plot(ecdf(c5l1m1))
plot(density(c5l1m1))
