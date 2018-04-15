#Perform NDMS analysis of the genepop files from STACKS
#This analysis follows the R package 'vegan' tutorial http://cc.oulu.fi/~jarioksa/opetus/metodi/vegantutor.pdf


#read in batch_1.genpop file from STACKS into adegenet with read.genepop
#convert genind object to dissimilarity matrix with poppr package and the bitwise.dist function
#then use metaMDS from vegan package
#extra the distances which are 

### Be sure to adjust the file name output to match your the sample size being analyzed.
#ie.  batch 10, 20 or 37

library(adegenet)
library(poppr)
library(vegan)

#Manually copy batch_1.genepop files in each output folder to batch_1.gen (so read.genepop() can read the file)
# edit the read.genepop() line in this loop to the path of your output folders
#them run the loop


for(i in 1:10){
  df<- read.genepop(paste0("~/biol812programming/Final_Assignment/Mosquito_Project/mosquito_data/output_10_",i,"/batch_1.gen"))
  batch_1_dm <- bitwise.dist(df)
  sol<- metaMDS(batch_1_dm, k = 1)
  
  #write the NMDS data to a csv file
  file <- paste0("batch_10_",i,"_NMDS_points.csv")
  write.csv(sol$points, file = file)
  
  
  #stressplot(sol, batch_1_dm)
  #file <- paste0("batch_10_",i,"_stressplot.pdf")
  #dev.copy(pdf,file)
  #dev.off()
  
  
  #plot(sol, type = "t")
  #file <- paste0("batch_10_",i,"_NMDS.pdf")
  #dev.copy(pdf,file)
  #dev.off()
  
}


## Below are the individual code steps if you want to execute the code line by line.

library(adegenet)
#create a genind object
df<- read.genepop("~/biol812programming/Final_Assignment/Mosquito_Project/mosquito_data/output_10_1/batch_1.gen")
class(df)

#create the dist matrix
library(poppr)
batch_1_dm <- bitwise.dist(df)


library(vegan)
metaMDS(batch_1_dm)
sol <- metaMDS(batch_1_dm)

# We can inspect the mapping using the wrapper stressplot in vegan:
stressplot(sol, batch_1_dm)
batch_1_stressplot<- stressplot(sol, batch_1_dm)


plot(sol, type = "t")

#write the plot to a pdf file
dev.copy(pdf,'batch_10_1_NMDS.pdf')
dev.off()
