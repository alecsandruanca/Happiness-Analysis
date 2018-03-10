read_function=function(filename){
  tryCatch({
    table<-read.csv(filename,row.names = 1)
    return(table)
  
    
    })
  error=function(e){
    stop(paste("File reading error",e))
  }
  
}