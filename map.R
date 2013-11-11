library(mapdata)
map('world2Hires', col = "darkgray", xlim=c(50, 290),ylim=c(-70,80),panel.first = grid())
points(146,-35 , pch = 19, col = "red")
text(146, -35, "Riverina", cex = 0.9,pos = c(2), col = "blue")
rect(210, 5,270,-5,col = rgb(1,1,0.1,0.2))#nino3
text(240,-5,"NINO3",pos = c(1))
rect(190,5,240,-5,col = "grey")#nino3.4
text(215,5,"NINO3.4",pos = c(3))
rect(160,5,210,-5,col = rgb(0.5,1,1,0.2))#nino4
text(185,-5,"NINO4",pos = c(1))

rect(50,10,70,-10,col = rgb(1,1,0.1,0.2))#WPI
text(60,-10,"WPI",pos = c(1))
rect(90,0,110,-10,col = rgb(0.5,1,1,0.2))#EPI
text(100,10,"EPI",pos = c(1))

rect(120,0,130,-10,col = rgb(1,1,0.1,0.2))#II
text(125,-10,"II",pos = c(1))

rect(150,-30,160,-40,col = rgb(0,0,0,0.2))#TSI
text(155,-22,"TSI",pos = c(1))
