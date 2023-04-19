#### Preamble ####
# Purpose: Cleans the column names and removes excess columns.
# Authors: Syed Hassan
# Data: 20 April 2023
# Contact: syed.ext@gmail.com
# License: MIT
# Pre-requisites: The saved raw file 'inputs/data/raw/raw_data(2022 + 2021).csv', library: "tidyverse", "janitor", "reader", "here"


#### Workspace setup ####

## remove comments if installation is required on your machine
# install.packages("tidyverse")
# install.packages("janitor")
# install.packages("readr")
# install.packages("here")
# install.packages("lubridate")

library(tidyverse)
library(janitor)
library(readr)
library(here)
library(lubridate)


#### Clean data ####

raw_data_2022 <- read_csv(
  here::here("inputs/data/raw/raw_data_2022.csv"),
  show_col_types = FALSE
)

clean_data_2022 <- raw_data_2022 |>
  clean_names()

raw_data_2021 <- read_csv(
  here::here("inputs/data/raw/raw_data_2021.csv"),
  show_col_types = FALSE
)

clean_data_2021 <- raw_data_2021 |>
  clean_names()

# selecting the required columns

clean_selected_data_2022 <- clean_data_2022 |>
  select(
    x_id,
    location_id,
    occupancy_date,
    organization_name,
    location_city,
    sector,
    program_model,
    program_area,
    overnight_service_type,
    service_user_count,
    capacity_actual_bed,
    capacity_actual_room,
    occupancy_rate_beds,
    occupancy_rate_rooms
    )

clean_selected_data_2021 <- clean_data_2021 |>
  select(
    x_id,
    location_id,
    occupancy_date,
    organization_name,
    location_city,
    sector,
    program_model,
    program_area,
    overnight_service_type,
    service_user_count,
    capacity_actual_bed,
    capacity_actual_room,
    occupancy_rate_beds,
    occupancy_rate_rooms
  )

## Fixing the dates

# replace year yy with yyyy
fix_year_2022 <- clean_selected_data_2022 |>
  mutate(occupancy_date = str_replace(occupancy_date, "22", "2022"))

# convert character to date
fix_year_2022$occupancy_date <- ymd(fix_year_2022$occupancy_date)
fix_year_2022$occupancy_date |> 
  class()

# 2021
fix_year_2021 <- clean_selected_data_2021 |>
  mutate(occupancy_date = str_replace(occupancy_date, "21", "2021"))

# convert character to date
fix_year_2021$occupancy_date <- ymd(fix_year_2021$occupancy_date)

fix_year_2021$occupancy_date |> 
  class()


# checking the selected data's column names and values
head(fix_year_2022)
head(fix_year_2021)

# checking if the data is a data frame
fix_year_2022 |> class()
fix_year_2021 |> class()

#### Save data ####
# saving the data to specific files
write_csv(
  x = clean_selected_data_2022,
  file = here::here("inputs/data/clean/clean_data_2022.csv"),
)

write_csv(
  x = clean_selected_data_2021,
  file = here::here("inputs/data/clean/clean_data_2021.csv"),
)