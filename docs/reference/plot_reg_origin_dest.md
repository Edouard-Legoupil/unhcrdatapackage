# Plot Regional Origin Destination

Plot Regional Origin Destination

## Usage

``` r
plot_reg_origin_dest(year = 2024, region = "The Americas")
```

## Arguments

- year:

  Numeric value of the year (for instance 2020)

- region:

  Character value including the UNHCR region

## Examples

``` r
plot_reg_origin_dest(
    year = 2024,
    region = "The Americas"
)
#> Warning: There was 1 warning in `dplyr::mutate()`.
#> ℹ In argument: `unhcr_region = countrycode::countrycode(coa_iso, "iso3c",
#>   "unhcr.region")`.
#> Caused by warning:
#> ! Some values were not matched unambiguously: UNK
```
