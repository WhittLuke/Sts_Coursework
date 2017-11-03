
# This script will look to implement all of the summary statistics for the
# protein .csv file

# Exercise 1: Do data exploratory analysis for on the protein.csv

# Let's import the data
protein_data <- read.csv("data/protein.csv", header=TRUE)


# For Question 1 exercise (a) We want to find out the summary statistics
# for each of the variables and show the spread and level

# Use one statistic for each variable

# Find the spread of the Country column
table(protein_data$Country)/length(protein_data$Country)

# Mean for red meat
mean(protein_data$RedMeat)

# Median for white meat
median(protein_data$WhiteMeat)

# Interquartile range for Eggs 
IQR(protein_data$Eggs)
quantile(protein_data$Eggs, 0.75)-quantile(protein_data$Eggs,0.25)

# Range for milk
max(protein_data$Milk) - min(protein_data$Milk)

# Min for fish
min(protein_data$Fish)

# Max for Cereal
max(protein_data$Cereals)

# Variance for Fr.Veg
var(protein_data$Fr.Veg)

# Standard Deviation Starch
sd(protein_data$Starch)

# Variance Nuts
var(protein_data$Nuts)


# Part (b): For each variable, plot the data in a suitable way to illustrate
# level and the spread

attach(protein_data)

# Will need to save the images at a later date

# Pie chart to show the spread of the counrties
pie(table(Country)/length(Country))

# See what the ecdf of the red meat looks like
plot(ecdf(RedMeat))

# Plot the box plot of white meat
boxplot(WhiteMeat, main="Spread of White Meat")

# Histogram for Eggs
hist(Eggs, col="red")

# Box plot for Milk
boxplot(Milk, main="Spread of Milk")

# Historgram of Fish
hist(Fish, col="blue")

# Histogram of Ceral
hist(Cereals, col="red")

# Boxplot for starch
boxplot(Starch, main="Boxplot for Spread of Starch")

# Ecdf for Nuts
plot(ecdf(Nuts))

# Ecdf for Fruit and Veg
plot(ecdf(Fr.Veg))


# Part (c): Calculate a summary statistic to show the association of the consumption
# of fruit and veg with each of the other food categories
table(Country)/length(Fr.Veg)


# Mean for Red Meat and Fr.Veg
mean(RedMeat)
mean(Fr.Veg)

# Range for White Meat and Fr.Veg
max(WhiteMeat)-min(WhiteMeat)
max(Fr.Veg)-min(Fr.Veg)

# Median for Eggs
median(Eggs)
median(Fr.Veg)

# Standard Deviation for Milk and Fr.Veg
sd(Milk)
sd(Fr.Veg)

# IQR for Fish and Fr.Veg
IQR(Fish)
IQR(Fr.Veg)

# Max for Cereal and Fr.Veg
max(Cereals)
max(Fr.Veg)

# Min for Starch and Fr.Veg
min(Starch)
min(Fr.Veg)

# Variance for Nuts and Fr.Veg
var(Nuts)
var(Fr.Veg)


# Part (d): Show a plot illustrating the association of the consumption
# of fruit and veg with each of the other food categories.


plot(RedMeat, Fr.Veg, main="Consumption comparison between Red Meat and Fr.Veg",
     xlab="Read Meat", ylab="Fr.Veg", pch=19)

plot(WhiteMeat, Fr.Veg, main="Consumption compasion for White Meat and Fr.Veg",
     xlab="White Meat", ylab="Fruit and Veg", pch=19)

plot(Eggs, Fr.Veg, main="Consumption compasion for Eggs and Fr.Veg",
     xlab="Eggs", ylab="Fruit and Veg", pch=19)

plot(Milk, Fr.Veg, main="Consumption compasion for Milk and Fr.Veg",
     xlab="Milk", ylab="Fruit and Veg", pch=19)

plot(Fish, Fr.Veg, main="Consumption compasion for Fish and Fr.Veg",
     xlab="Fish", ylab="Fruit and Veg", pch=19)

plot(Cereals, Fr.Veg, main="Consumption compasion for Cereal and Fr.Veg",
     xlab="Cereal", ylab="Fruit and Veg", pch=19)

plot(Starch, Fr.Veg, main="Consumption compasion for Starch and Fr.Veg",
     xlab="Starch", ylab="Fruit and Veg", pch=19)

plot(Nuts, Fr.Veg, main="Consumption compasion for Nuts and Fr.Veg",
     xlab="Nuts", ylab="Fruit and Veg", pch=19)

