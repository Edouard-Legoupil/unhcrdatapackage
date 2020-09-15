#' @title reference
#' @description Code Mapping table
#' @format A data frame with 267 rows and 34 variables:
#' \describe{
#'   \item{\code{iso_3}}{character COLUMN_DESCRIPTION}
#'   \item{\code{UNHCRcode}}{character COLUMN_DESCRIPTION}
#'   \item{\code{ctryname}}{character COLUMN_DESCRIPTION}
#'   \item{\code{namepostat}}{character COLUMN_DESCRIPTION}
#'   \item{\code{namepostat2}}{character COLUMN_DESCRIPTION}
#'   \item{\code{gis_name}}{character COLUMN_DESCRIPTION}
#'   \item{\code{UNHCRBureau}}{character COLUMN_DESCRIPTION}
#'   \item{\code{main_office}}{character COLUMN_DESCRIPTION}
#'   \item{\code{hcr_region}}{character COLUMN_DESCRIPTION}
#'   \item{\code{hcr_subregion}}{character COLUMN_DESCRIPTION}
#'   \item{\code{code_op}}{character COLUMN_DESCRIPTION}
#'   \item{\code{Latitude}}{double COLUMN_DESCRIPTION}
#'   \item{\code{Longitude}}{double COLUMN_DESCRIPTION}
#'   \item{\code{scalerank}}{double COLUMN_DESCRIPTION}
#'   \item{\code{LABELRANK}}{double COLUMN_DESCRIPTION}
#'   \item{\code{SOVEREIGNT}}{character COLUMN_DESCRIPTION}
#'   \item{\code{SOV_A3}}{character COLUMN_DESCRIPTION}
#'   \item{\code{ADM0_DIF}}{double COLUMN_DESCRIPTION}
#'   \item{\code{LEVEL}}{double COLUMN_DESCRIPTION}
#'   \item{\code{TYPE}}{character COLUMN_DESCRIPTION}
#'   \item{\code{ADMIN}}{character COLUMN_DESCRIPTION}
#'   \item{\code{ADM0_A3}}{character COLUMN_DESCRIPTION}
#'   \item{\code{CONTINENT}}{character COLUMN_DESCRIPTION}
#'   \item{\code{REGION_UN}}{character COLUMN_DESCRIPTION}
#'   \item{\code{SUBREGION}}{character COLUMN_DESCRIPTION}
#'   \item{\code{REGION_WB}}{character COLUMN_DESCRIPTION}
#'   \item{\code{ECONOMY}}{character COLUMN_DESCRIPTION}
#'   \item{\code{INCOME_GRP}}{character COLUMN_DESCRIPTION}
#'   \item{\code{POP_EST}}{double COLUMN_DESCRIPTION}
#'   \item{\code{POP_RANK}}{double COLUMN_DESCRIPTION}
#'   \item{\code{GDP_MD_EST}}{double COLUMN_DESCRIPTION}
#'   \item{\code{POP_YEAR}}{double COLUMN_DESCRIPTION}
#'   \item{\code{LASTCENSUS}}{double COLUMN_DESCRIPTION}
#'   \item{\code{M49_code}}{double COLUMN_DESCRIPTION} 
#'}
#' @source \url{http://somewhere.important.com/}
"reference"

#' @title end_year_population_totals
#' @description Data collated by UNHCR, containing end-year stock population figures for forcibly displaced and stateless persons residing in World. Data is available since 1951.
#' @format A data frame with 103302 rows and 11 variables:
#' \describe{
#'   \item{\code{Year}}{character Year}
#'   \item{\code{CountryOriginCode}}{character Country of Origin Code isoA3}
#'   \item{\code{CountryAsylumCode}}{character Country of Asylum Code isoA3}
#'   \item{\code{CountryOriginName}}{character Country of Origin Name}
#'   \item{\code{CountryAsylumName}}{character Country of Asylum Name}
#'   \item{\code{Refugees}}{integer Number of Refugees}
#'   \item{\code{IDPs}}{integer Number of Internally Displaced Persons}
#'   \item{\code{AsylumSeekers}}{integer Number of Asylum-seekers}
#'   \item{\code{OthersOfConcern}}{integer Number of Others of Concern to UNHCR}
#'   \item{\code{StatelessPersons}}{integer Number of Stateless persons}
#'   \item{\code{VenezuelansDisplacedAbroad}}{integer Number of Venezuelans Displaced Abroad} 
#'}
#' @source \url{https://data.humdata.org/dataset/unhcr-population-data-for-world}
"end_year_population_totals"

#' @title end_year_population_totals_long
#' @description Data collated by UNHCR, containing end-year stock population figures for forcibly displaced and stateless persons residing in World. Data is available since 1951.
#' @format A data frame with 103303 rows and 11 variables:
#' \describe{
#'   \item{\code{Year}}{character Year}
#'   \item{\code{CountryOriginCode}}{character Country of Origin Code isoA3}
#'   \item{\code{CountryAsylumCode}}{character Country of Asylum Code isoA3}
#'   \item{\code{CountryOriginName}}{character Country of Origin Name}
#'   \item{\code{CountryAsylumName}}{character Country of Asylum Name}
#'   \item{\code{Population.type}}{character Population.type: Refugees, Internally Displaced Persons,Asylum-seekers, Others of Concern to UNHCR, Stateless persons, Venezuelans Displaced Abroad }
#'   \item{\code{Value}}{integer Number of }
#'}
#' @source \url{https://data.humdata.org/dataset/unhcr-population-data-for-world}
"end_year_population_totals_long"

#' @title solutions_residing
#' @description Data collated by UNHCR, containing information about the number of forcibly displaced residing in World availing different types of solutions for refugees and IDPs such as repatriation or resettlement. Data is available since 1983.
#' @format A data frame with 17127 rows and 9 variables:
#' \describe{
#'   \item{\code{Year}}{character Year}
#'   \item{\code{CountryOriginCode}}{character Country of Origin Code isoA3}
#'   \item{\code{CountryAsylumCode}}{character Country of Asylum Code isoA3}
#'   \item{\code{CountryOriginName}}{character Country of Origin Name}
#'   \item{\code{CountryAsylumName}}{character Country of Asylum Name}
#'   \item{\code{ResettlementArrivals}}{integer Number of Resettlement arrivals}
#'   \item{\code{Naturalisation}}{integer Number of Naturalisation}
#'   \item{\code{RefugeeReturns}}{integer Number of Refugee returns}
#'   \item{\code{IDPReturns}}{integer Number of IDP returns} 
#'}
#' @source \url{https://data.humdata.org/dataset/unhcr-population-data-for-world}
"solutions_residing"
