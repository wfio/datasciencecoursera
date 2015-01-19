source("corr.R")

corr <- function(directory, threshold) {
    
    ids <- list.files("specdata/", full.names = TRUE)
    
    
    directory <- c("/media//solaris//HotSwap//coursera//datasciencecoursera//specdata")
    threshold <- vector("numeric", length = 1)
    cr <- vector("numeric", length = 1)
    
    for(i in 1:length(id)){
        filenames <- sprintf("%s/%03d.csv", directory, id[i])
        nobs[i] <- sum(complete.cases(read.csv(filenames)))
    }
        
    }
    
    
}#end-func
