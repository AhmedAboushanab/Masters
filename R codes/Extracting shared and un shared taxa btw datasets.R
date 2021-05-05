library(stringr)
Data_1 <- read.csv("shared_level2_taxa.csv", header = F)
Data_2 <- read.csv("RaymondF_2016.csv", header = F) #change according to the study

Data1_level2 <- Data_1[1:4, 1] #change index according to study and taxa level
Data2_level2 <- Data_2[3:7, 1] #change index according to study and taxa level

#write.csv("Shared_level2_taxa" ,file = "shared_level2_taxa.csv", row.names = F)

Not_shared_taxa <- list()
shared_taxa <- read.csv("shared_level2_taxa.csv", header = TRUE) #change name
for(f in 1:length(Data1_level2)){
  for(e in 1:length(Data2_level2)){
    g = Data1_level2[f]
    h = Data2_level2[e]
    if(str_detect(h, g) == TRUE && !(h %in% shared_taxa[ , 1]) && !(g %in% shared_taxa[ , 1])){
      print("true")
      shared_taxa <- rbind(shared_taxa, h)
    }else if(str_detect(h, g) == FALSE && !(h %in% Not_shared_taxa)){
      print("false")
      Not_shared_taxa <- append(Not_shared_taxa, h)
      shared_taxa <- rbind(shared_taxa, "Not shared Taxa below")
    }else{
      break
    }
  }
}
Not_shared_taxa
shared_taxa
dim(shared_taxa)
write.table(shared_taxa, file = "shared_level2_taxa.csv", append = T, row.names = F, col.names = F) #change name
write.table(Not_shared_taxa, file = "shared_level2_taxa.csv", append = T, row.names = F, col.names = F)
# two conditions used to prevent repetition 