corr <- function(directory, threshold) {
    
    directory <- ("/media//solaris//HotSwap//coursera//datasciencecoursera//specdata")
    id <- list.files(directory, full.names = TRUE) #call this file_names in the end
    filenames <- data.frame(id)
    threshold <- vector("numeric")
    cr <- vector("numeric", length = 1)
    
    for(i in 1:length(id)){
        filenames <- paste(threshold, id[i], sep = "") #call filenames 'id' in the end?
        cr[i] <- sum(complete.cases(read.csv(filenames)))
    
        }#end-for
    
    print("I made it to the end")
}

