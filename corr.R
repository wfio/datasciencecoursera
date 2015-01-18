source("corr.R")

corr <- function(directory, threshold) {
    
    threshold <- vector("numeric", length = 1)
    cr <- vector("numeric", length = 1)
    
    for(i in 1:length(threshold)){
        
        directory <- sprintf("%s/%03d.csv", directory, threshold[i])
        
        if(tmp <- complete.cases(read.csv(directory)) < threshold[i]) {
            next
        } 
        threshold[i] <- sum(tmp)
    }
    
    cr <- corr(directory$sulfate, directory$nitrate)
    
}#end-func
