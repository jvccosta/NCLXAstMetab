##### Y-maze analysis script #####

#### Counts number of spontaneous alternations on Y-maze, i.e., number of
#### non-repeated arm-entries' triplets, considering overlap ####

### Script was made to analyze a matrix of "k" columns and "i" rows ###

## By RoS_André Costa Oliveira & João Victor Cabral-Costa ##

#**************************************************************************#

#Installing required packages
install.packages("readr")


#Importing dataset
dataY <- read.csv("2021_08_20-ManualReanalysis.CSV", header = TRUE, sep = ";")
                  #SUBSTITUTE actual file name here


#Generating counter, filled up with 0 a priori, the same size as the
#target matrix
counter <- matrix(rep(0,length(dataY)), nrow = (nrow(dataY)),
                  ncol = (ncol(dataY)))
  colnames(counter) <- colnames(dataY)


#First loop, passing through all matrix elements
for(i in 1:nrow(dataY)){
  for(k in 2:ncol(dataY)){
  
  # Second loop - looks, for each matrix element, the third character and
  #compares it with the 2 preceding characters
  for(j in 3:nchar(dataY[i,k])){
    if (substr(dataY[i,k],j,j)!='' &&
        substr(dataY[i,k],j,j)!=substr(dataY[i,k],j-1,j-1) && 
        substr(dataY[i,k],j,j)!=substr(dataY[i,k],j-2,j-2) && 
        substr(dataY[i,k],j-1,j-1)!=substr(dataY[i,k],j-2,j-2)){
      counter[i,k] <- counter[i,k]+1
  }
  }
  }
  }
  

#Wraping up results on a single, labeled data frame
result <- cbind(dataY$ID, counter[,-1])
  colnames(result) <- colnames(dataY)

  print(result)
  
#Exporting results, with preserved ID column  
write.csv2(result, "Y-maze_Results.csv")
