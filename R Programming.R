#head, display the first 6 lines
head(prime_shows)

#nrow, use to display number of rows
nrow(prime_shows)

#ncol, use to display number of colums
ncol(prime_shows)

#dim, use to display dimension 
dim(prime_shows)

#names,siplay the attribute in a dataset
names(prime_shows)

#structure of the dataset
str(prime_shows)

#minimum rating
min(prime_shows$`IMDb rating`)

#maximum rating
max(prime_shows$`IMDb rating`)

#mean rating
mean(prime_shows$`IMDb rating`)

#summary, use to show the summary of dataset
summary(prime_shows)

#tail, use to display the last 6 lines
tail(prime_shows)

#typeof, which datatype the attribute belong to
typeof(prime_shows$`IMDb rating`)

typeof(prime_shows$`No of seasons available`)

typeof(prime_shows$Genre)

typeof(prime_shows$Language)

#to plot a bargraph
data=(prime_shows$`Age of viewers`)
table=table(data)
print(table)

barplot(table,col='blue')

#plotting histogram graph
hist(prime_shows$`Year of release`,breaks=seq(1920,2025,by=5),col="green",main="Shows Released", xlab="Year of Release", ylab="Count")

#Pie chart
data=(prime_shows$`No of seasons available`)
seasons_table <- table(prime_shows$`No of seasons available`)
seasons_df<- as.data.frame(seasons_table)
colnames(seasons_df)<-c("Seasons","Count")

library(ggplot2)

ggplot(seasons_df, aes(x="", y= Count, fill = factor(Seasons)))+
  geom_bar(width = 1, stat="identity")+
  coord_polar("y") +
  theme_void() +
  theme(legend.position="bottom") +
  scale_fill_discrete(name = "Seasons")+
  ggtitle("Show Seaons available in Prime")

#sort function
sort(prime_shows$`Name of the show`)
sort(prime_shows$`Year of release`)

#Violin Plot
library(ggplot2)

# Create a violin plot for the 'IMDb rating'
ggplot(prime_shows, aes(x = "", y = `IMDb rating`)) +
  geom_violin(fill = "skyblue", color = "blue") +
  geom_boxplot(width = 0.1, fill = "white", color = "blue") +
  labs(title = "Violin Plot of IMDb Rating") +
  theme_minimal() +
  theme(axis.text.x = element_blank(), axis.ticks.x = element_blank())

#unique,extract elements from the specific dataset
unique(prime_shows$Language)

#sd, standard deviation
sd(prime_shows$`IMDb rating`)

#quantile
quantile(prime_shows$`IMDb rating`)

#t.test
t.test(prime_shows$`No of seasons available`)



