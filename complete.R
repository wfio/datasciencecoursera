complete <- function(directory, id = 1:332) {
    
    id <- 1:332
    nobs <- numeric(length(id))
    
    #initialize a list vector that with the length of spec_full[332]
    #speclist <- vector(mode = "list", length = length(spec_full))
    
    #initialize a for-loop whose i is each iteration of spec_full
    #specilist then extracts the ith iteration of spec_full during
    #the loop and assigns the contents of the CSV to that iteration
    #of speclist[i]
    
    for(i in length(id)){
        filenames <- sprintf("%s/%03d.csv", directory, id[i])
        nobs[i] <- sum(complete.cases(read.csv(filenames)))
    }
    
    data.frame(id, nobs)
    #do.call allows vector conversion from list to data.frame
    #dframeconv <- do.call(rbind, speclist)

}
