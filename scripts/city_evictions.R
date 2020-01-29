# Description
# Read city eviction data from csv for South Carolina.

# Author: Ben Choi
# Version: 2020-01-28

# Libraries
.libPaths(c(.libPaths(), "C:/Users/choib/Documents/R/win-library/3.6"))
library(tidyverse)

# Parameters
url_data <- "https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.csv"
output_path <- here::here("data/city_evictions.rds")

#===============================================================================

# Code
url_data %>%
  read_csv(
    col_types =
      cols_only(
        GEOID = col_character(),
        year = col_integer(),
        name = col_character(),
        evictions = col_double()
      )
  ) %>%
  filter(year == 2016) %>%
  rename(geo_id = GEOID) %>%
  write_rds(output_path)
