# Plotting solutions within a country

As part of UNHCR standard approach, there are mostly 3 types of durable
solutions for Refugees: - Voluntary Repatriation in origin country -
Naturalization in the host country - Resettlement in a third country

## Usage

``` r
plot_ctr_solution(
  year = 2024,
  lag = 10,
  country_asylum_iso3c = country_asylum_iso3c,
  sol_type,
  category_font_size = 10,
  facet_title_size = 12,
  y_axis_text_size = 10
)
```

## Arguments

- year:

  Numeric value of the year (for instance 2020)

- lag:

  Number of year to used as comparison base

- country_asylum_iso3c:

  Character value with the ISO-3 character code of the Country of Asylum

- sol_type:

  Vector of character values. Possible population type (e.g.:"NAT" "RST"
  "RET" "RDP")

- category_font_size:

  Numeric value for axis text font size, default to 10

- facet_title_size:

  Numeric value for facet title font size, default to 12

- y_axis_text_size:

  Numeric value for y axis text font size, default to 10

## Value

a ggplot2 object

## Examples

``` r
plot_ctr_solution(
  year = 2024,
  country_asylum_iso3c = "UGA",
  lag = 10,
  sol_type = c("NAT", "RST", "RET", "RDP"),
  category_font_size = 10,
  facet_title_size = 12,
  y_axis_text_size = 10
)

plot_ctr_solution(
  year = 2024,
  country_asylum_iso3c = "UGA",
  lag = 10,
  sol_type = c("NAT", "RST", "RET", "RDP")
)
```
