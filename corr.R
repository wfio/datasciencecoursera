corr <- function(directory, threshold) {
    
    directory <- ("/media//solaris//HotSwap//coursera//datasciencecoursera//specdata")
    filenames <- list.files(directory, full.names = TRUE)
    correlations <- numeric()
    
    for(i in 1:length(filenames)) {
        
        read_files <- read.csv(filenames[i])
        obs <- read_files[complete.cases(read_files), ]
        num_obs <- nrow(obs) #integer vector of 1041 (1L)
    
        if(num_obs > threshold) {
           correlations[i] <- cor(obs$sulfate, obs$nitrate)
        }
    }#end-for
    
    correlations
}
