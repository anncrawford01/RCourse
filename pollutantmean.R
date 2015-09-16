pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!

  ## read.csv(id,header=TRUE)
  
 
##savewd <- getwd()

 ## if (file.exists(directory)){
 ##   setwd(file.path(savewd, directory))
 ## } else {}
   # error message(file)
    

  if(identical(pollutant,"nitrate") || identical(pollutant,"sulfate"))
 {
    
  }else{}
    #error message
    
  ## http://stackoverflow.com/questions/8266915/format-number-as-fixed-width-with-leading-zeros
  ## use split f to change ids into file names
##file_list <- sprintf("%03d.csv",id)
file_list <- paste(directory,sprintf("/%03d.csv",id), sep="")


## https://psychwire.wordpress.com/2011/06/03/merge-all-files-in-a-directory-using-r-into-a-single-dataframe/
## append to dataset
for (file in file_list){
  
  # if the merged dataset doesn't exist, create it
  if (!exists("dataset")){
    d1 <- read.csv(file, header=TRUE,colClasses = c("character","numeric", "numeric", "integer"))
    dataset <- d1[,pollutant]
  }

  # if the merged dataset does exist, append to it
  if (exists("dataset"))""
    {
    if (file.exists(file) ) 
      {
     temp_dataset <-read.csv(file, header=TRUE,colClasses = c("character","numeric", "numeric", "integer"))
     dataset<-rbind(dataset, temp_dataset)

      rm(temp_dataset)
      }
    }
}  ## end for loop
  

## caluclate the mean polutant
good <-(complete.cases(dataset[,pollutant]))


all <- dataset[,pollutant]

mean(all[good])



  
}
