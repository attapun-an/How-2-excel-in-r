# PRACTICE SCRIPT 
# written by attapun-an

# Install tidyr and dplyr (you only have to do this once)
install.packages('dplyr')
install.packages('tidyr')
# Load the packages 
library('dplyr')                                                               
library('tidyr')                                                                


# Set working directory to source file location
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))    

# Load the data ----  
HS_data <- read.csv('data/')
