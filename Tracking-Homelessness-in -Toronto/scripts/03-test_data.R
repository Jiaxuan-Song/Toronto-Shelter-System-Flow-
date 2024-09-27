#### Preamble ####
# Purpose: Runs tests on the cleaned dataset to check the validity
# of the entries.
# Author: Jiaxuan Song
# Date: September 23, 2024
# Contact: jiaxuan.song@mail.utoronto.ca
# Pre-requisites: Run the files "01-download_data.R" and "02-data_cleaning.R".

#### Loading the necessary packages ####
# install.packages("tidyverse")
library(tidyverse)

#### Loading the cleaned dataset ####
shelter_analysis_data <- read_csv("/Users/sjx/Desktop/Tracking-Homelessness-in -Toronto/data/analysis_data/analysis_data.csv")

#### Running the tests on the cleaned dataset ####

# 1. Checking the class of key columns to ensure they match expectations
test_population_group_class <- class(shelter_analysis_data$`Group of Population`) == "character"
test_actively_homeless_class <- class(shelter_analysis_data$`Actively Homeless`) == "integer"
test_gender_male_class <- class(shelter_analysis_data$`Gender Male`) == "integer"
test_gender_female_class <- class(shelter_analysis_data$`Gender Female`) == "integer"

print(paste("Test: Group of Population is character:", test_population_group_class))
print(paste("Test: Actively Homeless is integer:", test_actively_homeless_class))
print(paste("Test: Gender Male is integer:", test_gender_male_class))
print(paste("Test: Gender Female is integer:", test_gender_female_class))

# 2. Checking that the minimum value in the ID column is at least 1
test_min_id <- min(shelter_analysis_data$ID) >= 1
print(paste("Test: Minimum value in ID column is at least 1:", test_min_id))

# 3. Checking that only expected population groups are present
expected_groups <- c("Families", "Youth", "Single Adults", "Refugees", "Chronic Homelessness")
test_population_groups <- sort(unique(shelter_analysis_data$`Group of Population`)) == sort(expected_groups)
print(paste("Test: Expected population groups are present:", all(test_population_groups)))

# 4. Checking that the 'Actively Homeless' column contains reasonable values (non-negative)
test_actively_homeless_values <- all(shelter_analysis_data$`Actively Homeless` >= 0)
print(paste("Test: All values in 'Actively Homeless' are non-negative:", test_actively_homeless_values))

# 5. Checking that gender columns contain non-negative values
test_gender_male_values <- all(shelter_analysis_data$`Gender Male` >= 0)
test_gender_female_values <- all(shelter_analysis_data$`Gender Female` >= 0)
print(paste("Test: All values in 'Gender Male' are non-negative:", test_gender_male_values))
print(paste("Test: All values in 'Gender Female' are non-negative:", test_gender_female_values))

# 6. Checking that age columns contain valid values (non-negative and reasonable)
age_columns <- c('Age Under 16', 'Age 16-24', 'Age 25-34', 'Age 35-44', 'Age 45-54', 'Age 55-64', 'Age 65 and Over')
age_test_results <- sapply(age_columns, function(col) all(shelter_analysis_data[[col]] >= 0))

print("Age column tests:")
print(age_test_results)
