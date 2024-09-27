#### Preamble ####
# Purpose: Downloads the data from the opendatatoronto package (Gelfand 2022)
# and saves the dataset for use in the main paper.
# Author: Jiaxuan Song
# Date: September 23, 2024
# Contact: jiaxuan.song@mail.utoronto.ca
# Pre-requisites: Install the opendatatoronto (Gelfand 2022) and
# tidyverse (Wickham et al. 2019) packages.

#### Loading Packages ####

# install.packages("opendatatoronto")
# install.packages("tidyverse")
library(opendatatoronto)
library(tidyverse)

# This code is based on the on knowledge from Alexander (2023).

#### Downloading the Dataset ####

shelter_raw_data <-
  search_packages("Toronto Shelter System FLow") |>
  list_package_resources() |>
  filter(name == "toronto-shelter-system-flow.csv") |>
  get_resource()

#### Saving the Dataset ####

write_csv(marriage_licence_statistics,"/Users/sjx/Desktop/Tracking-Homelessness-in -Toronto/data/raw_data/raw_data.csv")
