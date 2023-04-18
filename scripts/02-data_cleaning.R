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

library(tidyverse)
library(janitor)
library(readr)
library(here)


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
    occupancy_date,
    organization_name,
    location_city,
    sector,
    program_model,
    program_area,
    overnight_service_type,
    capacity_actual_bed,
    capacity_actual_room,
    occupancy_rate_beds,
    occupancy_rate_rooms
    )

clean_selected_data_2021 <- clean_data_2021 |>
  select(
    x_id,
    occupancy_date,
    organization_name,
    location_city,
    sector,
    program_model,
    program_area,
    overnight_service_type,
    capacity_actual_bed,
    capacity_actual_room,
    occupancy_rate_beds,
    occupancy_rate_rooms
  )

# checking the selected data's column names
head(clean_selected_data_2022)
head(clean_selected_data_2021)

# checking if the data is a data frame
clean_selected_data_2022 |> class()
clean_selected_data_2021 |> class()

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