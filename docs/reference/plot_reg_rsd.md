# Plot Regional RSD

Plot Regional RSD

## Usage

``` r
plot_reg_rsd(
  year = 2024,
  region,
  top_n_countries = 10,
  measure = "Recognized",
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

- measure:

  Character value for the measure to display

- category_font_size:

  Numeric value for axis text font size

## Examples

``` r
plot_reg_rsd(
    year = 2024,
    region = "The Americas",
    measure = "Recognized",
    category_font_size = 10
)
```
