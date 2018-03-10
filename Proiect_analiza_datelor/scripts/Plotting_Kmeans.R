mydata=read.csv("Raport_2015.csv")
str(mydata)
df <- mydata[c( 4,5,6,7,8,9,10,11)]
View(df)
set.seed(1)
autoplot(kmeans(df, 3), data = df)

autoplot(kmeans(df, 3), data = df, label = TRUE, label.size = 3)


library(cluster)
autoplot(clara(df[-5], 3))

library(cluster)
autoplot(clara(df[-5], 3))

autoplot(pam(df[-5], 3), frame = TRUE, frame.type = 'norm')

clusplot(df, fit$cluster, color=TRUE, shade=TRUE, 
         labels=2, lines=0)

# Centroid Plot against 1st 2 discriminant functions
library(fpc)
plotcluster(df, fit$cluster)