source("corr.R")
source("complete.R")

corr <- function(directory, threshold = 0) {
    
    directory <- ("/media//solaris//HotSwap//coursera//datasciencecoursera//specdata")
    filenames <- list.files(directory, full.names = TRUE)
    data <- data.frame()
    complete <- complete(directory, id = 1:332)
    
        for (i in complete$id) {
            data <- complete(read.csv(filenames, header = TRUE))
            #data <- read_files, complete("specdata", complete$id)   
    
        }
     
    
}