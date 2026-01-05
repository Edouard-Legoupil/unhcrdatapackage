# Generate all country factsheet

Generate all country factsheet

## Usage

``` r
template_RegFactsheet(
  year = 2024,
  region = "Americas",
  lag = 10,
  folder = "Report"
)
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
# template_RegFactsheet(year = 2024,
#                       region = "Europe", lag = 10,
#                       folder = "Report")

## We can also generate all factsheets in a loop for 2022

# region <-  refugees::population |>
#   dplyr::distinct(coa_region) |>
#   dplyr::filter(!(is.na(coa_region))) |>
#   dplyr::pull()
#
# for( reg in region) {
#   unhcrviz::template_RegFactsheet(year = 2024,
#                         region = reg, lag = 10,
#                         folder = "Report")
# }
```
