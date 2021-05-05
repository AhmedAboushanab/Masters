File_names<-data.frame(read.delim("file_name.txt"))
for(f in 1:nrow(File_names)) {
  g = File_names[f, 1]
  cmd = paste("fastq-dump --split-3", g)
  cat(cmd,"\n")#print the current command
  system(cmd) # invoke command
}


RStudio.Version()
