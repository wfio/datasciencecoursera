corr <- function(directory, threshold) {
    
    directory <- ("/media//solaris//HotSwap//coursera//datasciencecoursera//specdata")
    filenames <- list.files(directory, full.names = TRUE)    
    cr <- numeric()
    
    for(i in 1:length(filenames)) {
    
        #filenames <- paste(threshold, id[i], sep = "")
        cr[i] <- sum(complete.cases(read.csv(filenames[i])))
        
            if(cr >= threshold) {
                print("Made it into the if")
            }
        }#end-for
    
    print("This is a test -- I made it to the end")
    data.frame(cr, threshold)
}
