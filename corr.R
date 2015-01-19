source("corr.R")

corr <- function(directory, threshold) {
    
    threshold <- list.files("specdata/", full.names = TRUE)
    
    
   directory <- c("/media//solaris//HotSwap//coursera//datasciencecoursera//specdata")
   threshold <- vector("numeric", length = 1)
   cr <- vector("numeric", length = 1)
   
   for(i in 1:seq_along(threshold)) {
   
       threshold <- complete.cases(directory(directory$sulfate & directory$nitrate > threshold[i]))
       
   }
    
cr <- corr(directory$sulfate, directory$nitrate)
    
}#end-func
