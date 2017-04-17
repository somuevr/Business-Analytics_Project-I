# Import data 
# list of all IRIS files in the sub directory 

list.files("C:/Users/Somayajulu/Documents/R")
?read.delim
# To read the dat files in folder 
data_iris_1 <- read.delim("001.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_2 <- read.delim("002.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_3 <- read.delim("003.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_4 <- read.delim("004.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_5 <- read.delim("005.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_6 <- read.delim("006.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_7 <- read.delim("007.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_8 <- read.delim("008.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_9 <- read.delim("009.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_10 <- read.delim("010.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_11 <- read.delim("011.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_12 <- read.delim("012.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_13 <- read.delim("013.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_14 <- read.delim("014.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_15 <- read.delim("015.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_16 <- read.delim("016.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_17 <- read.delim("017.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_18 <- read.delim("018.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_19 <- read.delim("019.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
data_iris_20 <- read.delim("020.dat", header = TRUE, sep="", skip=2, as.is=TRUE)
# reading all the dat files 
data_iris <- rbind(data_iris_1,data_iris_2,data_iris_3,data_iris_4,data_iris_5,
                   data_iris_6,data_iris_7,data_iris_8,data_iris_5,data_iris_10,
                   data_iris_11,data_iris_12,data_iris_13,data_iris_14,data_iris_15,
                   data_iris_16,data_iris_17,data_iris_18,data_iris_19,data_iris_20)
data_iris

# converting to single data frame

str(data_iris)
is.data.frame(data_iris)
# Manage XML data
library("XML")
install.packages("XML")
package_version("XML")
library("XML")
getwd()
list.files()
# Convert to data frame
iris_xml_data <- xmlToDataFrame("iris.xml")
iris_xml_data

# Converting XML to JSON 
install.packages("rjson")
library(rjson)
result <- from json(iris.xml")

#Data Manupulation 

library(dplyr)
iris_data <-data(iris)
iris_data
# Selection 
data <- head(select(iris, 1:5))
data

# filter() the data for species virginica
filter_iris <- filter(iris, Species == "virginica")
filter_iris
# filter () the data for species setosa
filter_iris1 <- filter(iris, Species == "setosa")
filter_iris1

# create a new column that stores logical values for sepal.width greater than half of sepal.length
newCol <- mutate(iris, greater.half = Sepal.Width > 0.5 * Sepal.Length)
newCol
tail(newCol)

# arrange()
newCol <- arrange(newCol, Petal.Width)
newCol                    
head(newCol)
#rename()
renameiris <- rename(iris, sepal.width = Sepal.Width)
renameiris
# Printing iris data
s <- summary(iris)
s