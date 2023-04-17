#### Preamble ####
# Purpose: Downloads and saves the required data from -> https://open.toronto.ca/dataset/daily-shelter-overnight-service-occupancy-capacity/
# Author: Syed Hassan
# Data: 21 April 2023
# Contact: syed.ext@gmail.com
# License: MIT
# Pre-requisites: "library(opendatatoronto)"


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(janitor)
###

#### Download data ####
# get package
package <- show_package("21c83b32-d5a8-4106-a54f-010dbe49f6f2")
package

# get all resources for this package
resources <- list_package_resources("21c83b32-d5a8-4106-a54f-010dbe49f6f2")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))
head(datastore_resources)

# load the 2022 and 2021 datastore resources
data_2022 <- filter(datastore_resources, row_number()==6) %>% get_resource()
data_2022
head(data_2022)

data_2021 <- filter(datastore_resources, row_number()==4) %>% get_resource()
data_2021

head(data_2021)

###


#### Save data ####
write_csv(data_2022, "inputs/data/raw_data_2022.csv")
write_csv(data_2021, "inputs/data/raw_data_2021.csv")

         