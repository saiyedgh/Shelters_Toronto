#### Preamble ####
# Purpose: Simulates data to have a rough sketch of the required dataset.
# Authors: Syed Hassan
# Data: 20 April 2023
# Contact: syed.ext@gmail.com
# License: MIT

#### Workspace setup ####
# Setting a seed for randomness
set.seed(100)

#### Simulate data ####
simulated_data <- tibble(
    # Simulates ids
    "id" = sample(
      x = c(1:500),
      size = 500,
      replace = TRUE
    ),
    # Simulates organization name
    "organization" = sample(
      x = c("Org A", "Org B", "Org C", "Org D"),
      size = 500,
      replace = TRUE
    ),
    # Simulates area names
    "location" = sample(
      x = c("Danforth", "Toronto Center", "Toronto East", "Toronto West", "Etobicoke", "North York"),
      size = 500,
      replace = TRUE
    ),
    # Simulates shelter type
    "type" = sample(
      x = c("winter", "permanenet", "temporary", "Covid", "Housing"),
      size = 500,
      replace = TRUE
    ),
    # Simulates occupancy percentage
    "YEAR" = sample(
      x = c("20%", "100%", "90%", "55%", "75%"),
      size = 500,
      replace = TRUE
    )
  )

simulated_data

