# checker script

checker <- function(flag){
  if(TRUE){
    return("Correct")
  }
  else{
    return("Not quite")
  }
}

generate_ans <- function(HS_data){
  # library(tidyr)
  # library(dplyr)
  # library(readr)
  
  # Task: separate test_subject into "type" and "number" (example below)
  # Type   Number
  # Pillow      1
  # Pillow      2
  Ans_sep1 <- separate(HS_data, test_subject, into = c("type", "number"), sep = "_") # put your answer into this object
  
  # Task 1: Filter only rows that have wood as their material
  Ans_f1 <- filter(HS_data, material == "wood")
  
  # Task 2: Filter the HS_data to only include materials that are wood and sentient is FALSE
  Ans_f2 <- filter(HS_data, material == "wood" & sentient == FALSE)
  
  # Filter only rows that have brick or glass as their materials 
  Ans_f3 <- filter(HS_data, material %in% c("brick", "glass"))
  
  # Select only material and depth 
  Ans_sel1 <- select(HS_data, c(material, depth))
  
  # Select everything except material
  Ans_sel2 <- select(HS_data, -c(material))
  # Task 1: create a new column called hs_late_average that adds up hs3 and h4 and 
  # and divides them by two
  Ans_m1 <- mutate(HS_data, hs_late_average = (hs3 +h4)/2)
    
    
  # Task 2: create a new column called dimensions_WHD with the by combining 
  # dimensions_WH and depth 
  # (hint: use the paste() function)
  Ans_m2 <- mutate(HS_data, dimensions_WHD = paste(dimensions_WH, depth, sep = ""))
  
}

check_separate <- function(Usr_sep1){
  flag_sep1 <- FALSE
  if (identical(Usr_sep1, Ans_sep1)){
    flag_sep1 <- TRUE
  }
  sep_reply <- paste("Task1:",checker(flag_sep1))
  
  return(paste(sep_reply, sep = "\n"))
}

# check_filter(Usr_f1, Usr_f2, Usr_f3)

