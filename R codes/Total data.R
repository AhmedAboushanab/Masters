library(stringr)
#appending data
Names <- c("Sample", "k__Bacteria|p__Bacteroidetes", "k__Bacteria|p__Proteobacteria",
           "k__Bacteria|p__Firmicutes", "k__Bacteria|p__Actinobacteria", "Country",
           "Death_Rate/100000", "Case_Mortality_rate/100")
write.csv(Names, file = "Total_data.csv", row.names = F, col.names = Names)
Data <- read.csv("Total_data.csv", header = F)
Sample <- t(read.csv("VatanenT_2016_healthy_Russia.csv", header = F))
Samples <- list()

options(digits = 5)
Names <- Sample[2:24, 1]
Data3 <- as.double(Sample[2:24, 3:6])
Data4 <- cbind(Names, Data3)

Sample[2:4, 1:6]
for(f in 2:ncol(Sample)){
  for(e in 1:ncol(Data)){
    for(k in 2:nrow(Sample)){
      g = Sample[1 , f]
      h = Data[1 , e]
      S = Sample[k, ]
      if(str_detect(h, g) == TRUE){
        print("true")
        Samples <- rbind(Samples, S)
      }else{
        print("false")
      }
    }
  }
}
write.table(Data4, file = "Total_data.csv", append = TRUE)
