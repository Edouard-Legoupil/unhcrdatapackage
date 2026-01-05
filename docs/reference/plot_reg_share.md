# Plot Regional Share

Plot Regional Share

## Usage

``` r
plot_reg_share(
  year = 2024,
  region = "The Americas",
  pop_type = "REF",
  label_font_size = 15
)
```

## Arguments

- year:

  Numeric value of the year (for instance 2020)

- region:

  Character value including the UNHCR region

- pop_type:

  Vector of character values. Possible population type

- label_font_size:

  Numeric value for label font size

## Examples

``` r
plot_reg_share(
    year = 2024,
    region = "The Americas",
    label_font_size = 15
)
#> Warning: There was 1 warning in `dplyr::mutate()`.
#> ℹ In argument: `unhcr_region = countrycode::countrycode(coa_iso, "iso3c",
#>   "unhcr.region")`.
#> Caused by warning:
#> ! Some values were not matched unambiguously: UNK
```
