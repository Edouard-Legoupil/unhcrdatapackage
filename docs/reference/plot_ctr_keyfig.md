# Summary Key Figures Key figures can be highlighted with humanitarian icons https://fontawesome.com/icons/categories/humanitarian

Summary Key Figures Key figures can be highlighted with humanitarian
icons https://fontawesome.com/icons/categories/humanitarian

## Usage

``` r
plot_ctr_keyfig(
  year = 2024,
  country_asylum_iso3c,
  population_type_font_size = 4,
  population_size_font_size = 5,
  icon_size = 5
)
```

## Arguments

- year:

  Numeric value of the year (for instance 2020)

- country_asylum_iso3c:

  Character value with the ISO-3 character code of the Country of Asylum

- population_type_font_size:

  Numeric value for population type font size, default to 4

- population_size_font_size:

  Numeric value for population size number font size, default to 5

- icon_size:

  Numeric value for icon size, default to 5

## Value

ggplot2

## Examples

``` r
plot_ctr_keyfig(
  year = 2024,
  country_asylum_iso3c = "COL"
)

plot_ctr_keyfig(
  year = 2024,
  country_asylum_iso3c = "COL"
)
```
