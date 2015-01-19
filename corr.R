corr <- function(directory, threshold) {
    
    directory <- c("/media//solaris//HotSwap//coursera//datasciencecoursera//specdata")
    id <- list.files(directory, full.names = TRUE)
    threshold <- vector("numeric", length = 1)
    cr <- vector("numeric", length = 1)
    
    for(i in 1:length(id)){
        filenames <- sprintf("%s/%s", directory, id[i])
        nobs[i] <- sum(complete.cases(read.csv(filenames)))
    
        }#end-for
    print("I made it to the end")
    
}

