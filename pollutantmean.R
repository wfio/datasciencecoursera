pollutantmean <- function(directory, pollutant, id = 1:332) {  
    
    file_names <- list.files("specdata", full.names = TRUE)
    read_files <- data.frame()
                     
    for (i in 1:332) {
    read_files <- rbind(read_files, read.csv(file_names[i]))
    }
#head(read_files)
    data_sub <- read_files[which(read_files[, "ID"] %in% id), ]
    mean(data_sub[, pollutant], na.rm=TRUE)

}