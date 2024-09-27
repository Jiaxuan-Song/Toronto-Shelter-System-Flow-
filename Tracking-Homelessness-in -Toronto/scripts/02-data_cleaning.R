#### Preamble ####
# Purpose: Cleans the raw Toronto Shelter System Flow data obtained in
# "01-download_data.R".
# Author: Jiaxuan Song
# Date: September 23, 2024
# Contact: jiaxuan.song@mail.utoronto.ca
# Pre-requisites: Run the file "01-download_data.R".

#### Loading Packages ####

# Install the necessary package
# install.packages("tidyverse")
library(tidyverse)

#### Cleaning the Dataset ####

raw_data <- read_csv("/Users/sjx/Desktop/Tracking-Homelessness-in -Toronto/data/raw_data/raw_data.csv")

# This code is based on the on knowledge from Alexander (2023).

cleaned_data <-
  raw_data |>
  
  # Only including the columns of interest
  select(`X_id`, `population_group`, `actively_homeless`, 
         `ageunder16`, `age16.24`, `age25.34`, `age35.44`, `age45.54`, 
         `age55.64`, `age65over`, `gender_male`, `gender_female`, 
         `gender_transgender.non.binary_or_two_spirit`) |>
  
  # Mutating any further changes based on your specific needs
  mutate(actively_homeless = as.integer(actively_homeless)) # Example conversion


#### Saving the Cleaned Dataset ####

write_csv(cleaned_data, "/Users/sjx/Desktop/Tracking-Homelessness-in -Toronto/data/analysis_data/filtered_data.csv")