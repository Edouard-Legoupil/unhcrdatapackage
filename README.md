# [unhcrdatapackage](https://Edouard-Legoupil.github.io/unhcrdatapackage/docs/)
A data package with UNHCR statistics Database


Data are pulled from HDX @ https://data.humdata.org/dataset/unhcr-population-data-for-world , conveniently packaged for R users.

Install from github with `devtools::install_github("Edouard-Legoupil/unhcrdatapackage")`.

The code used to build the package is in data/build.R - Tutorial from https://r-pkgs.org/data.html 


You can read the [Global Trend Report](https://www.unhcr.org/5ee200e37.pdf)

## Data Content

The data presented in this website consists of the following five datasets:

UNHCR:
 *    End-year population figures - these are stock figures for specific types of populations at the end of each year, including refugees, IDPs and asylum seekers.
 *    Solutions – these are flow figures, with the total number of individuals that have availed each solution in each year.

IDMC – global figures for internally displaced persons due to conflict and violence

UNRWA – Palestine refugees under the mandate of UNRWA

Demographics – are available for the UNHCR data, IDMC and UNRWA data. No demographics are available for resettlement and naturalization data



## Data structure

All data is disaggregated by year, type of population, country/territory of asylum and origin. 

`Year` is an integer between 1951 and 2019

Population types are expressed in the data as follows:
      *    `REF` – Refugee
      *    `ROC` – People in refugee-like situation
      *    `ASY` – Asylum seekers
      *    `VDA` – Venezuelans displaced abroad
      *    `IDP` – Internally displaced persons
      *    `IOC` – People in IDP-like situation
      *    `STA` – Stateless persons
      *    `OOC` – Others of concern

Solutions are expressed in the data as codes as follows:
      *    `RET` – Returned refugees
      *    `RST` – Resettled refugees
      *    `NAT` – Naturalized refugees
      *    `RDP` – Returned IDPs
      

> Note that the term country/territory of asylum has a range of contexts depending on the dataset chosen

 *   Resettlement – in this context this is the country of arrival – i.e. the country to which a refugee has been resettled
 *   Returns – in this context this is the country of departure – i.e. the country from which a refugee has voluntarily repatriated.
 
Country/territory of asylum and origin – the full list of UN countries is available on the UNSD methodology page . ISO3 country codes are included. 

UNHCR uses the following non-standard ISO3 country codes:
 *         `UNK` for Various/unknown
 *         `STA` for Stateless



## Data protection

Before publishing any statistics on the refugee statistics website, UNHCR applies safeguards to protect confidentiality. Small numbers less than five are rounded to the nearest multiple of five. Additionally data relating to pending asylum applications, new applications and decisions is rounded between five and ten.

Data between tables remains additive therefore the totals should be considered approximations. 