# PRACTICE SCRIPT 
# written by attapun-an

# INSTRUCTIONS
# run all the code before the exercise section

# Install packages (you only have to do this once)
install.packages('dplyr')
install.packages('tidyr')
install.packages('readr')
install.packages('rstudioapi')  #this is for lazy people to set the working directory with code
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

# Ensure that depth and test subjects are characters and not 
HS_data$depth <- as.character(HS_data$depth)
HS_data$test_subject <- as.character(HS_data$test_subject)

# this just generates the answers so you can check if your answer is right or not
source("data/checker-script.R")
Ans_key <- generate_ans(HS_data)
identical(Ans_key$Ansm1, Usr_m1)

Usr_m1 <- mutate(HS_data, hs_late_average = (hs3 +h4)/2)

# Make sure you run all of the code on top

# EXCERISE ----
# Instructions:
# Fill in the blanks ____ and run the code
# Run the checker at the end of each section to see if you got it correct
# If stuck, check the cheat sheet, or the examples at the bottom


# Separating ----

# Example: separating 
separate(HS_data, dimensions_WH, into = c("width", "height"), sep = "x")

# Task: separate test_subject into "type" and "number" (example below)
# Type   Number
# Pillow      1
# Pillow      2

Usr_sep1 <- ____ # put your answer into this object
  
check_separate(Usr_s1)

# Example
filter(HS_data, material == 'iron') # filter only rows that have iron as the material

# Task 1: Filter only rows that have wood as their material
Usr_f1 <- filter(HS_data, ____ )

# Task 2: Filter the data to only include materials that are wood and sentient is FALSE
Usr_f2 <- ____

# Filter only rows that have brick or glass as their materials 
Usr_f3 <- ____


check_filter(Usr_f1, Usr_f2, Usr_f3)


# Select ----

# Example: select only the columns type and hs1
select(HS_data, c(type, hs1))

# Example: select everything but those columns
select(HS_data, -c(type, hs1))

# Select only material and depth 
Usr_sel1 <- ____

# Select everything except material
Usr_sel2 <- ____


check_select(Usr_s1, Usr_s2)
# Mutating and More ---- 

# Example: parsing numbers (see what each does)
parse_number("X2001")

parse_number("100,02,34")

# Example: pasting (see what each does)
paste("Hello", "world", sep = " ")

paste("15","20","21", sep = ",")

paste("15","12","20", sep = "") # warning (the output is a string, cannot use for maths)

# Example: create a copy of the depth column using mutate()
mutate(HS_data, depth_copy = depth)

# Example: create a new column called hs_early that adds up hs1 and hs2
mutate(HS_data, hs_early = hs1 + hs2)

# Task 1: create a new column called hs_late_average that adds up hs3 and h4 and 
# and divides them by two
Usr_m1 <- 


# Task 2: create a new column called dimensions_WHD with the by combining 
# dimensions_WH and depth 
# (hint: use the paste() function)
Usr_m2 <- 
  

check_mutate(Usr_m1, Usr_m2)
## THE RENAME SECTION GOES HERE 
  # this is to avoid any confusion with renaming columns


# Examples ----

# view the Data
HS_data

# PARSE NUMBER
parse_number("x15")

parse_number("23,34")

# SEPARATE
temp <- select(HS_data, c(dimensions_WH)) # create new object with only the dimensions column
separate()

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