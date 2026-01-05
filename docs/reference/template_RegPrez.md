# Generate all country factsheet

Generate all country factsheet

## Usage

``` r
template_RegPrez(year = 2024, region = "Americas", lag = 10, folder = "Report")
```

## Arguments

- year:

  Numeric value of the year (for instance 2020)

- region:

  Bureau that covers all the countrie factsheet to generate

- lag:

  Number of year to used as comparison base

- folder:

  folder within your project where to put the generated report. Folder
  will be created if it does not exist

## Value

nothing the file for the report is generated

## Examples

``` r
# template_RegPrez(year = 2024, region = "Americas", lag = 10,   folder = "Report")

# # Generate for a specific region
# region <- "Americas"
# year <- 2024
# library(tidyverse)
# ## get all countries with more than 1000 Reported individuals
# ctr <- refugees::population |>
#         filter(year == year &
#                 coa_region == region ) |>
#         group_by( coa_name, coa_iso   ) |>
#         summarise(Value = sum(refugees, asylum_seekers, idps, oip, stateless, others_of_concern, na.rm=TRUE) ) |>
#         ungroup() |>
#         filter( Value  > 1000 )
#
#   for ( i in (1:nrow(ctr))) {
#     # i <- 1
#     country_asylum_iso3c = as.character(ctr[i ,2 ])
#     cat(paste0(country_asylum_iso3c, "\n"))
#     unhcrviz::template_CtryPrez(year = 2024,
#                                   country_asylum_iso3c = country_asylum_iso3c,
#                                   folder = "Report")
#   }
```
