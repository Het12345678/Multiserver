
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Multiserver

<!-- badges: start -->
<!-- badges: end -->

The goal of Multiserver is to simulate how customers will go through a
first come, first serve queuing system as long as “fate” has already
decided when each customer will arrive and their service times.

## Installation

You can install the development version of Multiserver from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Het12345678/Multiserver")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(Multiserver)
data(Bank)
#> Warning in data(Bank): data set 'Bank' not found
with(bank, Multiserver(arrival_time, service_time, 4))
#> # A tibble: 100 × 4
#>    Arrivals ServiceBegins ChosenServer ServiceEnds
#>       <dbl>         <dbl>        <dbl>       <dbl>
#>  1     119.          119.            1        149.
#>  2     134.          134.            2        289.
#>  3     326.          326.            3        356.
#>  4     339.          339.            4        424.
#>  5     372.          372.            1        652.
#>  6     396.          396.            2        474.
#>  7     400.          400.            3        435.
#>  8     491.          491.            4        650.
#>  9     531.          531.            3        762.
#> 10     628.          628.            2        734.
#> # … with 90 more rows
## basic example code
```
