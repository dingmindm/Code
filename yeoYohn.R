require("VGAM")
la = c(2)
y = c(1:20)
x = yeo.johnson(y, la)

plot(density(x))