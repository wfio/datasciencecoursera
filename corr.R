corr <- function(directory, threshold) {
    
    directory <- ("/media//solaris//HotSwap//coursera//datasciencecoursera//specdata")
    id <- list.files(directory, full.names = TRUE)
    filenames <- data.frame(id)
    threshold <- vector("numeric")
    cr <- vector("numeric")
    
    for(i in 1:length(id)){
        filenames <- sprintf("%s/%i", threshold, id[i])
        cr[i] <- sum(complete.cases(read.csv(filenames)))
    
        }#end-for
    
    print("I made it to the end")
    data.frame(id, cr)
}

