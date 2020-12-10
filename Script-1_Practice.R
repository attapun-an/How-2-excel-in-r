# PRACTICE SCRIPT 
# written by attapun-an

# INSTRUCTIONS
# run all the code before the excercise section)
# if you get stuck refer to the cheat sheet or check out the exmaples below

# Install tidyr and dplyr (you only have to do this once)
install.packages('dplyr')                                                       # you can delete these lines afterwards
install.packages('tidyr')
install.packages('readr')
# Load the packages 
library('dplyr')                                                               
library('tidyr')  
library('readr')


# Set working directory to source file location 
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))                     # this means the files we link will be 
                                                                                # relative to the location of our script

# Load the data 
HS_data <- read.csv('data/human-substitute.csv')


# head(HS_data) tail(HS_data) are normally used but we don't have that many rows
HS_data
str(HS_data)

# Make sure all these  

# EXCERISE ----

# All exercises use the HS_data 

# Filter the data to only include materials that are wood
Usr_wood <- filter(HS_data, ____ )
Usr_wood

# Filter the data to only include materials that are wood and are not sentient
Usr_deadwood <- ____
Usr_deadwood


# Select only type and depth 
Usr_td <- select(HS_data, ____)

# Select everything except material
Usr_nonMat <- ____


# Create a new column 






# Examples ----

# view the Data
HS_data

# PARSE NUMBER
parse_number("x15")

parse_number("23,34")

# SEPARATE
temp <- select(HS_data, c(dimensions_WH)) # create new object with only the dimensions column
separate()

# PASTE


# separate dimensions_WH, "x" is the separator
separate(HS_data, dimensions_WH, into = c("width", "height"),sep = "x")

str(HS_data)

HS_data$width <- as.numeric(HS_data$width)
HS_data$height <- as.numeric(HS_data$width)


# PASTE 

# FILTER

# filter for rows where the material is 'iron' 
filter(HS_data, material == 'iron')

# filter for rows where the material is 'iron' or 'aluminum'
filter(HS_data, material == 'iron' | material == 'aluminium')  
HS_metal

# filter rows where the material is equal to anything in this list 
filter(HS_data, material %in% c('iron', 'aluminium'))

# both of them are the same
identical(HS_metal, HS_metal_1)


# SELECT

# select only the columns type and hs1
select(HS_data, c(type, hs1))

# select everything but those columns
select(HS_data, -c(type, hs1))


# MUTATE

mutate(HS_data, hs_average = (hs1+hs2+hs3+h4)/4)

mutate(HS_data, dimensions_WHD = paste(dimensions_WH, depth, sep = ""))

# mutate can be used with case_when for more advanced stuff

# RENAME
rename(HS_data, hs4 = h4, alive = sentient)


# note: you can use relocate to relocate things