library(MASS)
require(ggplot2)
require(ggmap)
D=read.csv("C:/Users/BABAK/Desktop/Crimes.csv",header = TRUE)
lon=D$Longitude
lat=D$Latitude
mymap= get_map(location="chicago",zoom=11,scale="auto",maptype="roadmap")
ggmap(mymap)+
  geom_point(data=as.data.frame(cbind(lon,lat)),aes(x=D$Longitude,y=D$Latitude),color="red",alpha=.01,size=3,shape=21)
#3---------------------------------------------------------------

plot(density(na.omit(D)$Latitude),xlab="latitude",col="blue",main="Density over latitude")

#4----------------------------------------------------------------

persp(kde2d(na.omit(D)$Latitude,na.omit(D)$Longitude),phi = 45, theta = 0,
      xlab = "Lat", ylab = "Long",zlab = "density")

