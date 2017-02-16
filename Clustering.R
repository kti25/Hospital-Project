#######################################################################################################################
#
#  Interactions of the Factors - Comparing the co-factors of Cost
#
#######################################################################################################################
#importing the data
getwd()
setwd("Z:/")
newdata1=read.csv("newfile.csv",header= TRUE)
names(join)

#filtering out the duplicates
newdata2<-unique.data.frame(newdata1)
names(newdata2)

#export if you want
write.csv(newdata2, "Z:/newdataset1.csv", row.names=FALSE)

#getting rid of unwanted data for clustering
names(jmp)
nd<-jmp[-c(1,2,5,7,8,9)]
names(nd)

#clustering
library(cluster)
library(fpc)
model<-model.matrix(~.+0, data=nd)
new<-kmeans(nd, 6)

#3D plot
library(rgl)
plot3d(nd, col=new$cluster)
