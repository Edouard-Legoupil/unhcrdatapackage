# Plot Regional Decrease

Plot Regional Decrease

## Usage

``` r
plot_reg_decrease(
  year = 2024,
  lag = 5,
  topn = 5,
  region = "The Americas",
  pop_type = c("REF", "ASY", "OIP"),
  category_font_size = 10
)
```

## Arguments

- year:

  Numeric value of the year (for instance 2020)

- lag:

  Number of year to used as comparison base

- topn:

  Numeric value for number of top countries to show

- region:

  Character value including the UNHCR region

- pop_type:

  Vector of character values. Possible population type

- category_font_size:

  Numeric value for axis text font size

## Examples

``` r
plot_reg_decrease(
    year = 2024,
    region = "The Americas",
    category_font_size = 10
)
#> Warning: There was 1 warning in `dplyr::mutate()`.
#> ℹ In argument: `unhcr_region = countrycode::countrycode(coa_iso, "iso3c",
#>   "unhcr.region")`.
#> Caused by warning:
#> ! Some values were not matched unambiguously: UNK
```
