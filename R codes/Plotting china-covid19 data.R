library(tidyverse)
library(reshape)

#Reading data and subdividing it to level_taxa
data = read.csv("China_Covid19_Level2_Taxa.csv")
head(data)

#remove the study names from the sample names using replace function in excel 
#and save the file
#plotting different taxa for a single country
meltdata <- melt(data)
ggplot(meltdata) + 
  geom_boxplot(mapping = aes(x = variable, y = value, fill = variable)) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  scale_fill_discrete(name="Taxa Level 2") +
  labs(x = "L2 Taxa", y = "Relative Abundance") +
  ggtitle("Level 2 Taxa in Covid-19 patients from China") +
  theme(plot.title = element_text(hjust = 0.5))

#Plotting the samples as stacked-bar plots
ggplot(meltdata, aes(x = meltdata$sample, y = value, fill = variable)) + 
  geom_bar(stat = "identity") + 
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  scale_fill_discrete(name="Taxa Level 2") +
  labs(x = "Sample", y = "Relative Abundance") +
  ggtitle("China's samples") +
  theme(plot.title = element_text(hjust = 0.5))