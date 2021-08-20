# A data package with UNHCR statistics Database

Please visit: [`unhcrdatapackage`](https://unhcr.github.io/unhcrdatapackage/docs/)

Data are pulled from HDX @ [unhcr-population-data-for-world](https://data.humdata.org/dataset/unhcr-population-data-for-world), conveniently packaged for R users. 

Install from github with `devtools::install_github("unhcr/unhcrdatapackage")`.

The code used to build the package is in `data-raw/build.R` inspired from tutorial @ https://r-pkgs.org/data.html 

You can read the [Global Trend Report](https://www.unhcr.org/5ee200e37.pdf) and check the [different vignettes](https://unhcr.github.io/unhcrdatapackage/docs/articles/) displaying how data can be used:

## Data Content

The data presented in this website consists of the following dataset:

 *  [End-year population figures](reference/end_year_population_totals.html) - these are stock figures for specific types of populations at the end of each year, including refugees, IDPs and asylum seekers.
 *  [Demographics](reference/demographics.html) – are available for the UNHCR data, IDMC and UNRWA data. No demographics are available for resettlement and naturalization data
 *  [Asylum applications](reference/asylum_applications.html) by asylum-seekers
 *  [Asylum decisions](reference/asylum_decisions.html) taken on asylum claims of asylum-seekers
 *  [Solutions](reference/solutions.html) – these are flow figures, with the total number of individuals that have availed each solution in each year.
 

## Data structure

Details is provided for each dataset

All data is disaggregated by year, between 1951 and 2019 for stock figures, type of population, country/territory of asylum and origin. 

> Note that the term country/territory of asylum has a range of contexts depending on the dataset chosen

 *   __Resettlement__ – in this context this is the country of arrival – i.e. the country to which a refugee has been resettled
 *   __Returns__ – in this context this is the country of departure – i.e. the country from which a refugee has voluntarily repatriated.
 
Country/territory of asylum and origin – the full list of UN countries is available on the UNSD methodology page . ISO3 country codes are included. UNHCR uses the following non-standard ISO3 country codes:  

 *   `UNK` for Various/unknown  
 *   `STA` for Stateless  

## Data protection

Before publishing any statistics on the refugee statistics website, UNHCR applies safeguards to protect confidentiality. Small numbers less than five are rounded to the nearest multiple of five. Additionally data relating to pending asylum applications, new applications and decisions is rounded between five and ten.

Data between tables remains additive therefore the totals should be considered approximations. 

## Contribution are welcome

Contribution - specifically creation of new vgnettes are welcome - please fork and submit pullrequest.

```{r}
pkgdown::build_site()
```
