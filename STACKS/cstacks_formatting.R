#script to modify the sample text files to include the cstacks parameters for BASH jobs
#modify the paste0 statement once we have the cstacks parameters defined
#setwd() to the folder containing the text files to process
#formatted text files will be output to the newly created "formatted" folder.

#for the 10 sample size
#create a directory to put the newly formatted output
dir.create("formatted")
#loop through the ten text files
for(i in 1:10){
  file <- paste0("popmap_10_",i,".txt")
 df<- read.table(file)
 df$V1 <- paste0("-s ./output/",df$V1, " \\")
 file <- paste0("~/biol812programming/Final_Assignment/Mosquito Project/mosquito_data/size10/formatted/",file)
 write.table(df, file = file, row.names = FALSE, col.names = FALSE)
 }
 

#for the 25 sample size
#create a directory to put the newly formatted output
dir.create("formatted")
#loop through the ten text files
for(i in 1:10){
  file <- paste0("popmap_25_",i,".txt")
  df<- read.table(file)
  df$V1 <- paste0("-s ./output/",df$V1, " \\")
  file <- paste0("~/biol812programming/Final_Assignment/Mosquito Project/mosquito_data/size25/formatted/",file)
  write.table(df, file = file, row.names = FALSE, col.names = FALSE)
}


#for the 37 sample size
#create a directory to put the newly formatted output
dir.create("formatted")
#loop through the ten text files
for(i in 1:10){
  file <- paste0("popmap_37_",i,".txt")
  df<- read.table(file)
  df$V1 <- paste0("-s ./output/",df$V1, " \\")
  file <- paste0("~/biol812programming/Final_Assignment/Mosquito Project/mosquito_data/size37/formatted/",file)
  write.table(df, file = file, row.names = FALSE, col.names = FALSE)
}
