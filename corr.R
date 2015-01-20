corr <- function(directory, threshold) {
    
    directory <- ("/media//solaris//HotSwap//coursera//datasciencecoursera//specdata")
    id <- list.files(directory, full.names = TRUE)
    filenames <- data.frame(id)    
    cr <- vector("numeric")
    output <- vector("numeric")
    
    for(i in 1:332) {
    
        #filenames <- paste(threshold, id[i], sep = "")
        cr[i] <- sum(complete.cases(read.csv(id[i])))
        results <- numeric(cr[i])
        
       
        
        }#end-for
    
    print("This is a test -- I made it to the end")
    data.frame(cr, threshold)
}
