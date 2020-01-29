# Description
# Joins city eviction and boundary data in South Carolina.

# Author: Ben Choi
# Version: 2020-01-28

# Libraries
.libPaths(c(.libPaths(), "C:/Users/choib/Documents/R/win-library/3.6"))
library(tidyverse)

# Parameters
city_evictions_path <- here::here("data/city_evictions.rds")
city_boundaries_path <- here::here("data/city_boundaries.rds")
output_path = here::here("data/city_evictions_boundaries.rds")

#===============================================================================

# Code
read_rds(city_evictions_path) %>%
  left_join(
    read_rds(city_boundaries_path),
    by = c("geo_id", "name")
  ) %>%
  write_rds(output_path)
