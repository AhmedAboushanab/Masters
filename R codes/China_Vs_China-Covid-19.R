library(tidyverse)
library(reshape)

data = read.csv("China_Vs_China-Covid-19.csv")
data2 = melt(data)

ggplot(data2) +
  geom_boxplot(mapping = aes(x = variable
                             , y = value, fill = Disease_state)) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  scale_fill_discrete(name="Disease State") +
  labs(x = "Shared Level 2 taxa" , y = "Relative Abundance") +
  ggtitle("Relative Abundance between Healthy and Covid-19 patients from China") +
  theme(plot.title = element_text(hjust = 0.5))