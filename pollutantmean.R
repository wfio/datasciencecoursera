pollutantmean <- function(directory, pollutant, id) {  
    
    id = 1:332
    file_names <- list.files("specdata/", full.names = TRUE)
    
    obs <- data.frame()
    
    for (i in 1:length(id)) {
        read_files <- read.csv(file_names[i])
        obs <- read_files[complete.cases(read_files), ]
    }
    
    print(obs)
    #dfrm_sub <- dframe[which(dframe[, "ID"] %in% id),]
    obs_mean <- mean(obs[, pollutant])
    obs_mean
}