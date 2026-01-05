# Asylum Applications & Decision over time This charts allow to visualize trends in terms of asylum applications, decision and refugee status recognition

Asylum Applications & Decision over time This charts allow to visualize
trends in terms of asylum applications, decision and refugee status
recognition

## Usage

``` r
plot_ctr_asylum(year = 2024, country_asylum_iso3c, lag = 10)
```

## Arguments

- year:

  Numeric value of the year (for instance 2020)

- country_asylum_iso3c:

  Character value with the ISO-3 character code of the Country of Asylum

- lag:

  Number of year to used as comparison base

## Value

a ggplot2 object

## Examples

``` r
plot_ctr_asylum(
  year = 2024,
  country_asylum_iso3c = "ECU",
  lag = 10
)
```
