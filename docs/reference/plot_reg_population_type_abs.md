# Plot Regional Population Type Absolute

Plot Regional Population Type Absolute

## Usage

``` r
plot_reg_population_type_abs(
  year = 2024,
  region = "The Americas",
  top_n_countries = 5,
  pop_type = "REF",
  show_diff_label = TRUE,
  label_font_size = 6,
  category_font_size = 10
)
```

## Arguments

- year:

  Numeric value of the year (for instance 2020)

- region:

  Character value including the UNHCR region

- top_n_countries:

  Numeric value for number of top countries to show

- pop_type:

  Vector of character values. Possible population type

- show_diff_label:

  Boolean to show difference label

- label_font_size:

  Numeric value for label font size

- category_font_size:

  Numeric value for axis text font size

## Examples

``` r
plot_reg_population_type_abs(
    year = 2024,
    region = "The Americas",
    label_font_size = 6,
    category_font_size = 10
)
#> Warning: There was 1 warning in `dplyr::mutate()`.
#> ℹ In argument: `unhcr_region = countrycode::countrycode(coa_iso, "iso3c",
#>   "unhcr.region")`.
#> Caused by warning:
#> ! Some values were not matched unambiguously: UNK
```
