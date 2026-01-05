# Plot Regional Solution

Plot Regional Solution

## Usage

``` r
plot_reg_solution(
  year = 2024,
  region = "The Americas",
  lag = 10,
  label_font_size = 4,
  category_font_size = 10
)
```

## Arguments

- year:

  Numeric value of the year (for instance 2020)

- region:

  Character value including the UNHCR region

- lag:

  Number of year to used as comparison base

- label_font_size:

  Numeric value for label font size

- category_font_size:

  Numeric value for axis text font size

## Examples

``` r
plot_reg_solution(
    year = 2024,
    region = "The Americas",
    label_font_size = 4,
    category_font_size = 10
)
#> Warning: There was 1 warning in `dplyr::mutate()`.
#> ℹ In argument: `unhcr_region = countrycode::countrycode(coa_iso, "iso3c",
#>   "unhcr.region")`.
#> Caused by warning:
#> ! Some values were not matched unambiguously: UNK
```
