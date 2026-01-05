# Graph of Population Type Over year

Graph of Population Type Over year

## Usage

``` r
plot_ctr_population_type_per_year(
  year = 2024,
  lag = 5,
  country_asylum_iso3c,
  pop_type = c("REF", "ASY", "IDP", "OIP", "STA", "OOC"),
  label_font_size = 4,
  category_font_size = 10,
  legend_font_size = 10
)
```

## Arguments

- year:

  Numeric value of the year (for instance 2020)

- lag:

  Number of year to used as comparison base

- country_asylum_iso3c:

  Character value with the ISO-3 character code of the Country of Asylum

- pop_type:

  Vector of character values. Possible population type (e.g.: REF, IDP,
  ASY, OIP, OIP, OOC, STA)

- label_font_size:

  Numeric value for label font size, default to 4

- category_font_size:

  Numeric value for axis text font size, default to 10

- legend_font_size:

  Numeric value for legend font size, default to 10

## Value

a ggplot2 object

## Examples

``` r
p <- plot_ctr_population_type_per_year(
  year = 2024,
  country_asylum_iso3c = "BRA",
  lag = 5,
  pop_type = c(
    "REF",
    "ASY",
    "OIP",
    "OOC",
    "STA",
    "IDP"
  )
)
p

## Raw data can always be accessed with
# knitr::kable(ggplot2::ggplot_build(p)$plot$data )
p <- plot_ctr_population_type_per_year(
  year = 2024,
  country_asylum_iso3c = "BRA",
  lag = 5,
  pop_type = c(
    "REF",
    "ASY",
    "OIP",
    "OOC",
    "STA",
    "IDP"
  )
)
p

## Raw data can always be accessed with
# knitr::kable(ggplot2::ggplot_build(p)$plot$data )
```
