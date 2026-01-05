# Asylum Processing

Displaying Asylum processing

## Usage

``` r
plot_ctr_process(
  year = 2024,
  country_asylum_iso3c,
  otherprop = 0.02,
  label_font_size = 4,
  category_font_size = 10
)
```

## Arguments

- year:

  Numeric value of the year (for instance 2020)

- country_asylum_iso3c:

  Character value with the ISO-3 character code of the Country of Asylum

- otherprop:

  value set by default to .02 - used to merge origin as "Other"

- label_font_size:

  Numeric value for label font size, default to 4

- category_font_size:

  Numeric value for axis text font size, default to 10

## Value

a ggplot2 object

## Examples

``` r
plot_ctr_process(
  year = 2024,
  country_asylum_iso3c = "BOL",
  label_font_size = 4,
  category_font_size = 10
)


plot_ctr_process(
  year = 2024,
  country_asylum_iso3c = "CHL",
  label_font_size = 4,
  category_font_size = 10
)



plot_ctr_process(
  year = 2024, country_asylum_iso3c = "USA",
  otherprop = .02,
  label_font_size = 4,
  category_font_size = 10
)


plot_ctr_process(
  year = 2024, country_asylum_iso3c = "USA",
  otherprop = .04,
  label_font_size = 4,
  category_font_size = 10
)

plot_ctr_process(year = 2024, country_asylum_iso3c = "BOL")


plot_ctr_process(year = 2024, country_asylum_iso3c = "CHL")



plot_ctr_process(
  year = 2024, country_asylum_iso3c = "USA",
  otherprop = .02
)


plot_ctr_process(
  year = 2024, country_asylum_iso3c = "USA",
  otherprop = .04
)
```
