Evictions in South Carolina in 2016
================
Ben Choi
2020-01-28

``` r
# Libraries
library(tidyverse)

# Parameters
city_evictions_boundaries_path <- 
  here::here("data/city_evictions_boundaries.rds")

#===============================================================================

# Code
read_rds(city_evictions_boundaries_path) %>% 
  top_n(1, evictions)
```

    ## # A tibble: 1 x 5
    ##   geo_id   year name             evictions geometry
    ##   <chr>   <int> <chr>                <dbl> <list>  
    ## 1 4550875  2016 North Charleston     3660. <XY>

North Charleston had the most evictions in 2016.
