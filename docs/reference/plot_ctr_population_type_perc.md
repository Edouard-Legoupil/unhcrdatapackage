# Main country of origin - Percentage

Main country of origin - Percentage

## Usage

``` r
plot_ctr_population_type_perc(
  year = 2024,
  country_asylum_iso3c,
  top_n_countries = 9,
  pop_type = "REF",
  show_diff_label = TRUE,
  label_font_size = 4,
  category_font_size = 10
)
```

## Arguments

- year:

  Numeric value of the year (for instance 2020)

- country_asylum_iso3c:

  Character value with the ISO-3 character code of the Country of Asylum

- top_n_countries:

  Numeric value of number of main countries that the graph should
  display

- pop_type:

  Character value. Possible population type (e.g.: REF, IDP, ASY, OIP,
  OOC, STA)

- show_diff_label:

  Logical value to show the difference label or not

- label_font_size:

  Numeric value for label font size, default to 4

- category_font_size:

  Numeric value for axis text font size, default to 10

## Value

a ggplot2 object

## Examples

``` r
plot_ctr_population_type_perc(
  year = 2024,
  country_asylum_iso3c = "BRA",
  top_n_countries = 9,
  pop_type = "REF",
  show_diff_label = FALSE,
  label_font_size = 4,
  category_font_size = 10
)


plot_ctr_population_type_perc(
  year = 2024,
  country_asylum_iso3c = "BRA",
  top_n_countries = 9,
  pop_type = "ASY",
  show_diff_label = TRUE,
  label_font_size = 4,
  category_font_size = 10
)

plot_ctr_population_type_perc(
  year = 2024,
  country_asylum_iso3c = "BRA",
  top_n_countries = 9,
  pop_type = "REF",
  show_diff_label = FALSE
)


plot_ctr_population_type_perc(
  year = 2024,
  country_asylum_iso3c = "BRA",
  top_n_countries = 9,
  pop_type = "ASY",
  show_diff_label = TRUE
)
```
