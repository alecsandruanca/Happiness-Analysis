# Happiness-Analysis


In this project I am trying to analyse the Happinnes around the globe using Principal Component Analysis and K-Means Clustering analysis.
The scope of it is interpreting the positive or negative affect that GDP, Life Expectancy(due to the Healthcare System), Social support or Freedom and Generosity in a certain country have on the overall level of Happiness in that country.

The Principal Component Analysis tell us that almost 80% in the variation of the Happiness Score is explained by the variation of only 3 Principal Components as we cand see in the scree plot below.

![Image of Scree Plot](https://github.com/alecsandruanca/Happiness-Analysis/blob/master/pictures/Rplot03.png)



We can observe that some cluster form based on the region the countries belong to: 


![Image of Country Cluster Plot](https://github.com/alecsandruanca/Happiness-Analysis/blob/master/pictures/Rplot01.png)


We see that for instance Happiness Score and Family Benefits, Health and Economy are highly correlated. 
Trust in the Government and Freedom are also correlated. 
We also see that Happiness Score,Family, Economy, Health are more correlated with the first dimension whereas Freedom, Generosity,Trust in the Government are more correlated with the  second dimension. 

![Image of Dimensionality of components Plot](https://github.com/alecsandruanca/Happiness-Analysis/blob/master/pictures/Dimensionalitate.PNG)

![Image of Correlation Plot](https://github.com/alecsandruanca/Happiness-Analysis/blob/master/pictures/Correlation.PNG)



Running K-Means Cluster Analysis and plotting the results give us the following graph:

![Image of K-Means Plot](https://github.com/alecsandruanca/Happiness-Analysis/blob/master/pictures/plot_Kmeans.png)
