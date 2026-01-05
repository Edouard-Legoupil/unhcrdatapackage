# Main country of origin - Absolute value

Main country of origin - Absolute value

## Usage

``` r
plot_ctr_population_type_abs(
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

  logical to indicate whether or not adding the the label displaying
  difference in percentage compared to the previous year

- label_font_size:

  Numeric value for label font size, default to 4

- category_font_size:

  Numeric value for axis text font size, default to 10

## Value

a ggplot2 object

## Examples

``` r
plot_ctr_population_type_abs(
  year = 2024,
  country_asylum_iso3c = "USA",
  top_n_countries = 4,
  pop_type = "REF",
  show_diff_label = FALSE,
  label_font_size = 4,
  category_font_size = 10
)


## Same with 9 top countries and Asylum-seekers included
plot_ctr_population_type_abs(
  year = 2024,
  country_asylum_iso3c = "USA",
  top_n_countries = 9,
  pop_type = "ASY",
  show_diff_label = TRUE,
  label_font_size = 4,
  category_font_size = 10
)

plot_ctr_population_type_abs(
  year = 2024,
  country_asylum_iso3c = "USA",
  top_n_countries = 4,
  pop_type = "REF",
  show_diff_label = FALSE
)


## Same with 9 top countries and Asylum-seekers included
plot_ctr_population_type_abs(
  year = 2024,
  country_asylum_iso3c = "USA",
  top_n_countries = 9,
  pop_type = "ASY",
  show_diff_label = TRUE
)
```
