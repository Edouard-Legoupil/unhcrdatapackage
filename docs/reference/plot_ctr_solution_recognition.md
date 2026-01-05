# Title

Description

## Usage

``` r
plot_ctr_solution_recognition(
  year = 2024,
  lag = 10,
  country_asylum_iso3c = country_asylum_iso3c,
  category_font_size = 10
)
```

## Arguments

- year:

  Numeric value of the year (for instance 2020)

- lag:

  Number of year to used as comparison base

- country_asylum_iso3c:

  Character value with the ISO-3 character code of the Country of Asylum

- category_font_size:

  Numeric value for axis text font size, default to 10

## Value

a ggplot2 object

## Examples

``` r
plot_ctr_solution_recognition(
  year = 2024,
  country_asylum_iso3c = "UGA",
  lag = 10,
  category_font_size = 10
)

plot_ctr_solution_recognition(
  year = 2024,
  country_asylum_iso3c = "UGA",
  lag = 10
)
```
