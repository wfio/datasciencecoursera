source("complete.R")

corr <- function(directory, threshold = 0) {
    
    directory <- ("/media/solaris//HotSwap/coursera/datasciencecoursera/specdata/")
    filenames <- list.files(directory, full.names = TRUE)
    cr <- vector(mode = 'numeric')
    
    for(i in 1:length(filenames)) {
        
        read_files <- read.csv(filenames[i])
        sobs <- read_files[complete.cases(read_files), ]
        num_sobs <- nrow(sobs)
                
        if(num_sobs > threshold) {
           cr[i] <- cor(sobs$sulfate, sobs$nitrate, use="complete.obs")
         }
        
    }#end-for
    cr <- cr[!is.na(cr)]
    cr
}