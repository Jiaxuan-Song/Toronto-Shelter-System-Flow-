#### Preamble ####
# Purpose: Generates a simulated version of the Toronto's Shelter System Flow
# dataset from this analysis and uses tests to ensure that the simulated data
# is reasonable and realistic.
# Author: Jiaxuan Song
# Date: September 23, 2024
# Contact: jiaxuan.song@mail.utoronto.ca
# Pre-requisites: Install the tidyverse
# (Wickham et al. 2019) packages.

#### Loading Packages ####

# install.packages("tidyverse")
library(tidyverse)

#### Data Simulation ####

# Set a seed for reproducibility
set.seed(123)

# Define the possible population groups
population_groups <- c("Families", "Youth", "Single Adults", "Refugees", "Chronic Homelessness")

# Simulate a dataset of 1000 rows with random population groups
simulated_data <- data.frame(
  population_group = sample(population_groups, size = 1000, replace = TRUE)
)

# View the first few rows of the simulated data
head(simulated_data)

# Set a seed for reproducibility
set.seed(123)

# Simulate the actively_homeless variable for 1000 observations
# Assuming the number of actively homeless people ranges between 0 and 500
simulated_data <- data.frame(
  actively_homeless = sample(0:500, size = 1000, replace = TRUE)
)

# View the first few rows of the simulated data
head(simulated_data)

# Set a seed for reproducibility
set.seed(123)

# Simulate the male variable for 1000 observations
# Assuming the number of homeless males ranges between 0 and 300
simulated_data <- data.frame(
  male = sample(0:300, size = 1000, replace = TRUE)
)

# View the first few rows of the simulated data
head(simulated_data)

# Set a seed for reproducibility
set.seed(123)

# Simulate the female variable for 1000 observations
# Assuming the number of homeless females ranges between 0 and 300
simulated_data <- data.frame(
  female = sample(0:300, size = 1000, replace = TRUE)
)

# View the first few rows of the simulated data
head(simulated_data)

# Set a seed for reproducibility
set.seed(123)

# Simulate the transgender_non_binary variable for 1000 observations
# Assuming the number of homeless transgender/non-binary individuals ranges between 0 and 50
simulated_data <- data.frame(
  transgender_non_binary = sample(0:50, size = 1000, replace = TRUE)
)

# View the first few rows of the simulated data
head(simulated_data)

# Set seed for reproducibility
set.seed(123)

# Simulate the under_16 variable (assuming counts between 0 and 200)
simulated_under_16 <- data.frame(
  under_16 = sample(0:200, size = 1000, replace = TRUE)
)

# View the first few rows
head(simulated_under_16)

# Set seed for reproducibility
set.seed(123)

# Simulate the age_16_24 variable (assuming counts between 0 and 150)
simulated_age_16_24 <- data.frame(
  age_16_24 = sample(0:150, size = 1000, replace = TRUE)
)

# View the first few rows
head(simulated_age_16_24)

# Set seed for reproducibility
set.seed(123)

# Simulate the age_35_44 variable (assuming counts between 0 and 160)
simulated_age_35_44 <- data.frame(
  age_35_44 = sample(0:160, size = 1000, replace = TRUE)
)

# View the first few rows
head(simulated_age_35_44)

# Set seed for reproducibility
set.seed(123)

# Simulate the age_45_54 variable (assuming counts between 0 and 140)
simulated_age_45_54 <- data.frame(
  age_45_54 = sample(0:140, size = 1000, replace = TRUE)
)

# View the first few rows
head(simulated_age_45_54)

# Set seed for reproducibility
set.seed(123)

# Simulate the age_55_64 variable (assuming counts between 0 and 120)
simulated_age_55_64 <- data.frame(
  age_55_64 = sample(0:120, size = 1000, replace = TRUE)
)

# View the first few rows
head(simulated_age_55_64)

set.seed(123)

# Simulate the over_65 variable (assuming counts between 0 and 100)
simulated_over_65 <- data.frame(
  over_65 = sample(0:100, size = 1000, replace = TRUE)
)

# View the first few rows
head(simulated_over_65)