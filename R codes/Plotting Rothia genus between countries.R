library(tidyverse)
library(reshape)

#Read and fileter data
data = read.csv("Rotia2_Dataset.csv")

#Comparing between countries for the same taxa level
ggplot(data) +
  geom_boxplot(mapping = aes(x = factor(Country, levels = c("Italy", "Netherlands", "Canada", "Sweden",
                                                            "China", "Denmark", "Egypt", "Finland", "USA",
                                                            "Russia", "Madagascar"))
                             , y = k__Bacteria.p__Actinobacteria.c__Actinobacteria.o__Actinomycetales.f__Micrococcaceae.g__Rothia, fill = Country)) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) +
  scale_fill_discrete(name="Country") +
  labs(x = "Country" , y = "Rothia Relative Abundance") +
  ggtitle("Rothia Relative Abundance between countries") +
  theme(plot.title = element_text(hjust = 0.5))
