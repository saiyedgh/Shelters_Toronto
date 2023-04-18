#### Preamble ####
# Purpose: Tests the cleaned data to finalize it for analysis.
# Authors: Syed Hassan
# Data: 20 April 2023
# Contact: syed.ext@gmail.com
# License: MIT
# Pre-requisites: The saved raw files 'inputs/data/clean/clean_data(2022 + 2021).csv', library: "tidyverse", "reader", "here"


#### Workspace setup ####
library(tidyverse)
library(readr)
library(here)

#### Test data ####
test_clean_data_2022 <- read_csv(
  here::here("inputs/data/clean/clean_data_2022.csv"),
  show_col_types = FALSE
)

test_clean_data_2021 <- read_csv(
  here::here("inputs/data/clean/clean_data_2021.csv"),
  show_col_types = FALSE
)

## testing if the id column is complete without empty records
test_clean_data_2022$x_id |> 
  is.null()

test_clean_data_2021$x_id |> 
  is.null()
# all records have data

## testing if the id column is unique without duplicates
test_clean_data_2022$x_id |> 
  duplicated() |> 
  unique()

test_clean_data_2021$x_id |> 
  duplicated() |>
  unique()
# none of the rows had duplicates in both the files


## testing if the types of sectors are less than 10 for plotting purposes
test_clean_data_2022$sector |> 
  unique() |>
  length() < 10

test_clean_data_2021$sector |> 
  unique() |>
  length() < 10


## testing if the types of programs/shelter types are less than 6 for plotting purposes
test_clean_data_2022$program_area |> 
  unique() |>
  length() <= 6

test_clean_data_2021$program_area |> 
  unique()|>
  length() <= 6


