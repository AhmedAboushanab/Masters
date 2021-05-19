library(tidyverse)
library(reshape)

data = read.csv("Rothia.csv")
Data3 = data[1:316, 2:5]
data2 = melt(Data3)

ggplot(data2) +
  geom_boxplot(mapping = aes(x = variable
                             , y = value, fill = Disease_state)) +
  #theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  scale_fill_discrete(name="Disease State") +
  labs(x = "Rothia Genus and Species" , y = "Relative Abundance %") +
  ggtitle("Relative Abundance of Rothia Healthy vs Covid-19 patients from China") +
  theme(plot.title = element_text(hjust = 0.5))

#For Rothia - Copy
data = read.csv("Rothia - Copy.csv")
Data3 = data[1:316, 2:4]
data2 = melt(Data3)

ggplot(data2) +
  geom_boxplot(mapping = aes(x = variable
                             , y = value, fill = Disease_state)) +
  #theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  scale_fill_discrete(name="Disease State") +
  labs(x = "Rothia Genus" , y = "Relative Abundance %") +
  ggtitle("Relative Abundance of Rothia Genus (Healthy vs Covid-19 patients) from China") +
  theme(plot.title = element_text(hjust = 0.5))

#for rothia2
data4 = read.csv("Rothia2.csv")
Data5 = data4[1:271, 2:3]
data6 = melt(Data5)

ggplot(data6) +
  geom_boxplot(mapping = aes(x = variable
                             , y = value, fill = Disease_state)) +
  #theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  scale_fill_discrete(name="Disease State") +
  labs(x = "Rothia Genus and Species" , y = "Relative Abundance %") +
  ggtitle("Relative Abundance of Rothia Healthy vs Covid-19 patients from China") +
  theme(plot.title = element_text(hjust = 0.5))

#for rothia3
data7 = read.csv("Rothia3.csv")
Data8 = data7[1:260, 2:3]
data9 = melt(Data8)

ggplot(data9) +
  geom_boxplot(mapping = aes(x = variable
                             , y = value, fill = Disease_State)) +
  #theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  scale_fill_discrete(name="Disease State") +
  labs(x = "Rothia Genus and Species" , y = "Relative Abundance %") +
  ggtitle("Relative Abundance of Rothia Healthy vs Covid-19 patients from China") +
  theme(plot.title = element_text(hjust = 0.5))
