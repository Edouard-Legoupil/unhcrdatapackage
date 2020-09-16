# Package building function
#
# This function pulls data from HDX and then tidy them a bit to be ready for R

# Check that the usethis package is also installed. If not:
#install.packages("usethis")



#install.packages("sinew")
#devtools::install_github("mdlincoln/docthis")
#library(readr)
#library(sinew)
#library(docthis)

# # Time series
url <- paste( 'https://s3.eu-central-1.amazonaws.com/hdx-ckan-filestore-prod/resources/34337d16-017d-4d69-834c-a5e0fc21a549/end_year_population_totals_residing_world.csv') 
download.file(url, destfile = "data-raw/end_year_population_totals_residing_world.csv" )

end_year_population_totals <- readr::read_csv("data-raw/end_year_population_totals_residing_world.csv", 
                                                      col_types = cols(Refugees = col_integer(), 
                                                                       `Internally Displaced Persons` = col_integer(), 
                                                                       `Asylum-seekers` = col_integer(), 
                                                                       `Others of Concern to UNHCR` = col_integer(), 
                                                                       `Stateless persons` = col_integer(), 
                                                                       `Venezuelans Displaced Abroad` = col_integer()))

end_year_population_totals <- end_year_population_totals[-1,]
sinew::makeOxygen(end_year_population_totals, add_fields = "source")

# Rename column to have proper Variable names
end_year_population_totals <- plyr::rename(end_year_population_totals, c("Country of Origin Code"="CountryOriginCode",
                                       "Country of Asylum Code"="CountryAsylumCode", 
                                       "Country of Origin Name"="CountryOriginName",
                                       "Country of Asylum Name"="CountryAsylumName", 
                                       "Internally Displaced Persons"="IDPs", 
                                       "Asylum-seekers"="AsylumSeekers",
                                       "Others of Concern to UNHCR"="OthersOfConcern",
                                       "Stateless persons"="StatelessPersons",    
                                        "Venezuelans Displaced Abroad"="VenezuelansDisplacedAbroad" ))

save(end_year_population_totals, file =  "data/end_year_population_totals.RData")




## Create a long format for the dataset

end_year_population_totals_long <- reshape2::melt(end_year_population_totals,
                                           # ID variables - all the variables to keep but not split apart on
                                           id.vars=c("Year", "CountryOriginCode","CountryAsylumCode","CountryOriginName","CountryAsylumName" ),
                                           # The source columns
                                           measure.vars=c("Refugees","IDPs", "AsylumSeekers","OthersOfConcern","StatelessPersons","VenezuelansDisplacedAbroad"),
                                           # Name of the destination column that will identify the original
                                           # column that the measurement came from
                                           variable.name="Population.type",
                                           value.name="Value")
  
save(end_year_population_totals_long, file =  "data/end_year_population_totals_long.RData")





url <- paste( 'https://s3.eu-central-1.amazonaws.com/hdx-ckan-filestore-prod/resources/b51b8c0e-494d-488b-98d5-a70fd9451b90/solutions_residing_world.csv') 
download.file(url, destfile = "data-raw/solutions_residing_world.csv" ) 
solutions_residing <- read_csv("data-raw/solutions_residing_world.csv", 
                                     col_types = cols(`Resettlement arrivals` = col_integer(), 
                                                      Naturalisation = col_integer(), `Refugee returns` = col_integer(), 
                                                      `IDP returns` = col_integer()))

solutions_residing <- solutions_residing[-1,]
sinew::makeOxygen(solutions_residing, add_fields = "source")
# Rename column to have proper Variable names
solutions_residing <- plyr::rename(solutions_residing, c("Country of Origin Code"="CountryOriginCode",
                                                                         "Country of Asylum Code"="CountryAsylumCode", 
                                                                         "Country of Origin Name"="CountryOriginName",
                                                                         "Country of Asylum Name"="CountryAsylumName", 
                                                                         "Resettlement arrivals"="ResettlementArrivals",
                                                                         "Refugee returns"="RefugeeReturns",
                                                                         "IDP returns"="IDPReturns" ))
save(solutions_residing, file =  "data/solutions_residing.RData")



url <- paste( 'https://s3.eu-central-1.amazonaws.com/hdx-ckan-filestore-prod/resources/295cd9e4-8464-43ee-ad17-47196991a1f7/demographics_residing_world.csv') 
download.file(url, destfile = "data-raw/demographics_residing_world.csv" )

url <- paste( 'https://s3.eu-central-1.amazonaws.com/hdx-ckan-filestore-prod/resources/6f7aded5-f5e7-482b-86d8-ccfe6994e261/asylum_decisions_residing_world.csv') 
download.file(url, destfile = "data-raw/asylum_decisions__residing_world.csv" )

url <- paste( 'https://s3.eu-central-1.amazonaws.com/hdx-ckan-filestore-prod/resources/90aebc46-0557-4230-af47-081014a78c69/asylum_applications_residing_world.csv') 
download.file(url, destfile = "data-raw/asylum_applications_residing_world.csv" )





reference <- read_csv("data-raw/reference.csv")
save(reference, file =  "data/reference.RData")
sinew::makeOxygen(reference, add_fields = "source")

devtools::document()


#install.packages("pkgdown")

library("pkgdown")
pkgdown::build_site()


## a few other exploration of the package

devtools::document()

devtools::release()

# devtools::build_win(version = c("R-release", "R-devel"))

attachment::att_to_description()
rhub::check_for_cran()
rhub::check()
