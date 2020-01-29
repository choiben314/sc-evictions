# Description
# Read city boundary data from csv for South Carolina.

# Author: Ben Choi
# Version: 2020-01-28

# Libraries
.libPaths(c(.libPaths(), "C:/Users/choib/Documents/R/win-library/3.6"))
library(tidyverse)

# Parameters
url_data =
  "https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.geojson"
output_path <- here::here("data/city_boundaries.rds")

#===============================================================================

# Code
url_data %>%
  sf::read_sf(
  ) %>%
  select(geo_id = GEOID, name = n, geometry) %>%
  write_rds(output_path)
