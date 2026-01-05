# Plot Regional Treemap

Plot Regional Treemap

## Usage

``` r
plot_reg_treemap(
  year = 2024,
  region = "The Americas",
  pop_type = c("REF", "ASY", "IDP", "OIP", "OOC", "STA"),
  label_font_size = 15
)
```

## Arguments

- year:

  Numeric value of the year (for instance 2020)

- region:

  Character value including the UNHCR region

- pop_type:

  Vector of character values. Possible population type (e.g.: REF, IDP,
  ASY, OIP, OIP, OOC, STA)

- label_font_size:

  Numeric value for label font size

## Examples

``` r
plot_reg_treemap(
    year = 2024,
    region = "The Americas",
    label_font_size = 15
)
#> Error in plot_reg_treemap(year = 2024, region = "The Americas", label_font_size = 15): object 'cols_poptype_abbr' not found
```
