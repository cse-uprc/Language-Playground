# install.packages("ggplot2")
library(datasets)
library(dplyr)
library(ggplot2)

data(iris)
summary(iris)

names(iris) <- tolower(names(iris))

virginica <- filter(iris, species=="virginica")
tail(virginica, 10)

newCol <- mutate(iris, greater.half = sepal.width >0.5*sepal.length)
head(newCol)

ggplot(data=iris, aes(x=sepal.width, y=sepal.length))+geom_point(aes(color=species, shape=species), size=5)

ggplot(data=iris, aes(x=sepal.width))+geom_histogram(binwidth=.2,color="black",aes(fill=species))
