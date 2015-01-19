corr <- function(directory, threshold) {
    
    directory <- ("/media//solaris//HotSwap//coursera//datasciencecoursera//specdata")
    id <- list.files(directory, full.names = TRUE)
    filenames <- data.frame(id)
    threshold <- vector("numeric")
    cr <- vector("numeric")
    output <- vector("numeric")
    
    for(i in 1:332) {
    
        filenames <- paste(threshold, id[i], sep = "")
        cr[i] <- sum(complete.cases(read.csv(filenames)))
        results <- numeric(cr[i])
        
        if(cr <= threshold) {
            next
        }
        
        }#end-for
    
    print("I made it to the end")
    cr
    #data.frame(cr, threshold)
    ##output <- cor(id, threshold)
}

