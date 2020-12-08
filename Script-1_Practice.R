# PRACTICE SCRIPT 
# written by attapun-an

# Install tidyr and dplyr (you only have to do this once)
install.packages('dplyr')                                                       # you can delete these lines afterwards
install.packages('tidyr')
install.packages('grepl')
# Load the packages 
library('dplyr')                                                               
library('tidyr')  
library('ggrepel')


# Set working directory to source file location 
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))                     # this means the files we link will be 
                                                                                # relative to the location of our script

# Load the data 
HS_data <- read.csv('data/human-substitute.csv')


# head(HS_data) tail(HS_data) are normally used but we don't have that many rows
HS_data
str(HS_data)







# Examples ----

# view the Data
HS_data

# FILTER

# filter for rows where the material is 'iron' 
filter(HS_data, material == 'iron')

# filter for rows where the material is 'iron' or 'aluminum'
HS_metal <- filter(HS_data, material == 'iron' | material == 'aluminium')  
HS_metal

# filter rows where the material is equal to anything in this list
HS_metal_1 <- filter(HS_data, material %in% c('iron', 'aluminium'))

identical(HS_metal, HS_metal_1)

test <- c("he","she","they")

# SELECT

# select 
select(HS_data, c(type, hs1))
select(HS_data, -c(type, hs1))

separate(HS_data, dimensions_WH, into = c("width", "height"),sep = "x")

as.numeric("200")
as.character(200)

