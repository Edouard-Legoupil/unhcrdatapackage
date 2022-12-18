# [`{UnhcrDataPackage}`](https://unhcr.github.io/unhcrdatapackage/docs/): A data package with UNHCR statistics Database <img src="man/figures/logo.png" width="200" align="right" />


The package is inspired from tutorial @ https://r-pkgs.org/data.html (the code used to build the package is in `data-raw/build.R`). Data are pulled from HDX @ [unhcr-population-data-for-world](https://data.humdata.org/dataset/unhcr-population-data-for-world) and are then conveniently packaged for R users intending to build __data stories__. Note, that you can also explore data through  [Refugee Data Finder](https://www.unhcr.org/refugee-statistics/).


This package promotes [reproducible approaches](https://unhcr-americas.github.io/reproducibility) within UNHCR.If you are UNHCR Staff and want to learn R, visit [UNHCR Learn & Connect- R training](https://unhcr.csod.com/ui/lms-learner-playlist/PlaylistDetails?playlistId=e90e2279-e3a4-4ef2-8b74-757f91d224b2).

## Install
First install UNHCR branding packages for R as showcased here: https://dataviz.unhcr.org/tools/r/

```{r}
remotes::install_github("vidonne/unhcrdesign")
remotes::install_github("vidonne/unhcrthemes")
remotes::install_github("vidonne/unhcrdown")
remotes::install_github("edouard-legoupil/unhcrdatapackage")
```

## Chart Library

The package includes a series of functions that provides recipes to create re-usable charts in line with a [Divisible Content Strategy](https://www.columnfivemedia.com/divisible-content-strategy-gives-brand-less/). All those functions are then rendered through predefined Report template, aka "__Statistical Factsheet__" got Countries or Regions, generated either as PDF or Powerpoint presentations.

For Designers, convenient versions of each plot in __svg__ format (usable with Illustrator/Inkscape or Indesign/Scribus) can be generated directly  with: `unhcrthemes::unhcr_save(plot, "plot.svg")`.

You can also explore __Country Statistical Focus__, accessible [here](CountryFocus.html) that provides visualization by country in relation to 6 dimensions of displacement:  Categories, Origin, Demographics, Solutions, Processing and Source.   


## Data Content

The data presented in this website consists of the following dataset:

 *  [End-year population figures](reference/end_year_population_totals.html) - these are stock figures for specific types of populations at the end of each year, including refugees, IDPs and asylum seekers.
 *  [Demographics](reference/demographics.html) – are available for the UNHCR data, IDMC and UNRWA data. No demographics are available for resettlement and naturalization data
 *  [Asylum applications](reference/asylum_applications.html) by asylum-seekers
 *  [Asylum decisions](reference/asylum_decisions.html) taken on asylum claims of asylum-seekers
 *  [Solutions](reference/solutions.html) – these are flow figures, with the total number of individuals that have availed each solution in each year.
 

## Data structure

Details is provided for each dataset

All data is disaggregated by year, since 1951 for stock figures, type of population, country/territory of asylum and origin. 

> Note that the term country/territory of asylum has a range of contexts depending on the dataset chosen

 *   __Resettlement__ – in this context this is the country of arrival – i.e. the country to which a refugee has been resettled
 *   __Returns__ – in this context this is the country of departure – i.e. the country from which a refugee has voluntarily repatriated.
 
Country/territory of asylum and origin – the full list of UN countries is available on the UNSD methodology page . ISO3 country codes are included. UNHCR uses the following non-standard ISO3 country codes:  

 *   `UNK` for Various/unknown  
 *   `STA` for Stateless  

## Data protection & Statistical Disclosure Risk Treatment

Before publishing any statistics on the refugee statistics website, UNHCR applies safeguards to protect confidentiality. Small numbers less than five are rounded to the nearest multiple of five. Additionally data relating to pending asylum applications, new applications and decisions is rounded between five and ten.

Data between tables remains additive therefore the totals should be considered approximations. 



## Missing chart

You can submit __request for new charts__ [here](https://github.com/Edouard-Legoupil/unhcrdatapackage/issues/new)

__Contributions__, specifically creation of new functions for the chart library are welcome! Please [fork](https://github.com/Edouard-Legoupil/unhcrdatapackage), develop within the [fusen](https://thinkr-open.github.io/fusen/index.html) dev markdown here [dev/flat_full.Rmd](https://github.com/Edouard-Legoupil/unhcrdatapackage/blob/master/dev/flat_full.Rmd) and submit pull request.
