size10_1=read.csv("/Users/Peiwen/Desktop/OneDrive/BIOL812/Final project/size10/NMDS_points_scores_10_samples/batch_10_1NMDS_points.csv")
siteID=read.csv("/Users/Peiwen/Desktop/OneDrive/BIOL812/Final project/siteID.csv")
size10_1$Site=NA

n=20 #n is the sample size



for (i in 1:n){
  for (j in 1:length(siteID$X)) {
    if (size10_1$X[i]==paste(siteID$X[j])){
      size10_1$Site[i]=paste(siteID$Site[j])
      break
    }
  }
}

size10_1_pair= data.frame(SampleSize=rep(NA,10000),Sim=rep(NA,10000),Pair=rep(NA,10000),Distance=rep(NA,10000)) 

for (a in 1:length(size10_1_pair$SampleSize)){
  if(paste(size10_1_pair$SampleSize[a])=="NA"){
    k=a
    break
  }
}

for (i in 1:(length(size10_1$X)-1)){
  for (j in (i+1):length(size10_1$X)){
    if(paste(size10_1$Site[i])!=paste(size10_1$Site[j])){
      size10_1_pair$SampleSize[k]=paste(10)
      size10_1_pair$Sim[k]=paste(1)
      size10_1_pair$Pair[k]=paste(size10_1$X[i],"-",size10_1$X[j])
      size10_1_pair$Distance[k]=paste(abs(size10_1$MDS1[i]-size10_1$MDS1[j]))
      k=k+1
    }
  }
}

