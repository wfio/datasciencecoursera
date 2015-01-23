corr <- function(directory, threshold = 0) {
    
    directory <- ("/media//solaris//HotSwap//coursera//datasciencecoursera//specdata")
    filenames <- list.files(directory, full.names = TRUE)
    cr <- vector(mode = 'numeric')
    obs <- data.frame
    
    for(i in 1:length(filenames)) {
        
        read_files <- read.csv(filenames[i])
        obs <- read_files[complete.cases(read_files), ]
        num_obs <- nrow(obs) #integer vector of 1041 (1L)
    
        #if(num_obs > threshold) {
        #   cr <- cor(obs$sulfate, obs$nitrate, use="complete.obs")
       # } 
        
    }#end-for
    cr <- cor(obs$sulfate, obs$nitrate, use="complete.obs")
   cr
}
