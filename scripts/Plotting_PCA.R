mydata=read.csv("Raport_2015.csv")
str(mydata)
library(ggfortify)
df <- mydata[c( 4,5,6,7,8,9,10,11)]
autoplot(prcomp(df))
prc=prcomp(df)
print(prc)
autoplot(prc, data = mydata, colour = mydata$Happiness.Rank, loadings = TRUE)

autoplot(prc, data = mydata, colour = 'Region',
         loadings = TRUE, loadings.colour = 'blue',
         loadings.label = TRUE, loadings.label.size = 3)

