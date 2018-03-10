data=read.csv("Raport_2015.csv")
View(data)
d=data[c(1,3,4,5,6,7,8,9,10,11)]
View(d)
str(data)
summary(data)

#Scatter plot and correlations
install.packages("psych")
library(psych)
pairs.panels(data[,-2],gap=0,bg=c("red","yellow","blue","green")[data$Region],pch=21)

# library
library(ggplot2)


head(data)

# Color and shape depend on factor (categorical variable)
ggplot(data, aes(x=data$Economy..GDP.per.Capita.
                 , y=data$Happiness.Score, color=Region, shape=Region)) + 
  geom_point(size=6, alpha=0.6)

# Color and shape depend on factor (categorical variable)
#ce draguuut
ggplot(data, aes(x=data$Economy..GDP.per.Capita., y=data$Happiness.Score, color=Region, size=data$Happiness.Score)) + 
  geom_point(alpha=0.6)


#principal component analyses
#only done on independent variables
#center=true means that variables are converted in such a way that the average becomes 0
#scale means that the data is normalised
pca=prcomp(d[,-1],center=TRUE,scale.=TRUE)
attributes(pca)
pca$center
print(pca)
plot(pca)
library("FactoMineR")
library("factoextra")
library("corrplot")
library("mice")

#percentage of explained variance pam pam
fviz_eig(pca, addlabels = TRUE, ylim = c(0, 60), linecolor = "red", barfill = "darkblue", barcolor = "darkblue")

#Cos2 shows the quality of representation
fviz_cos2(pca, choice ="var", axes = 1:2, top = 10, color = "darkblue" )
fviz_contrib(pca, choice = "var", axes = 1, top = 5)
fviz_pca_ind (pca, pointsize = "cos2", pointshape = 22, fill = "blue", repel = TRUE)
plot(pca,  select = "cos2 50", cex=1,  col.ind = "darkblue", title = "50 countries with highest cos2", cex.main=2, col.main= "darkblue")
autoplot(prcomp(d), data = data, colour = 'Regions',
         loadings = TRUE, loadings.colour = 'blue',
         loadings.label = TRUE, loadings.label.size = 3)

install.packages("ggbiplot")
library("ggbiplot")

install.packages("devtools")

install("ggbiplot","vqv")

biplot(pca)

princomp(data, cor = FALSE, scores = TRUE, covmat = NULL)

pca$rotation
biplot(pca,scale=0)

screeplot(pca, npcs = min(10, length(pca$sdev)),
          type = c("barplot", "lines"),
          main = deparse(substitute(pca)))

screeplot(pca, npcs = 24, type = "lines")
eigen(pca$x)

attributes(pca)
print(pca$x)

mat<-cor(df)

ev<-eigen(mat)
plot(ev$values)


plot(ev$vectors)