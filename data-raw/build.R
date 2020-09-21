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
                                       "Refugees"="REF", 
                                       "Internally Displaced Persons"="IDP", 
                                       "Asylum-seekers"="ASY",
                                       "Others of Concern to UNHCR"="OOC",
                                       "Stateless persons"="STA",    
                                        "Venezuelans Displaced Abroad"="VDA" ))

save(end_year_population_totals, file =  "data/end_year_population_totals.RData")




## Create a long format for the dataset

end_year_population_totals_long <- reshape2::melt(end_year_population_totals,
                                           # ID variables - all the variables to keep but not split apart on
                                           id.vars=c("Year", "CountryOriginCode","CountryAsylumCode","CountryOriginName","CountryAsylumName" ),
                                           # The source columns
                                           measure.vars=c("REF","IDP", "ASY","OOC","STA","VDA"),
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
solutions <- plyr::rename(solutions_residing, c("Country of Origin Code"="CountryOriginCode",
                                                                         "Country of Asylum Code"="CountryAsylumCode", 
                                                                         "Country of Origin Name"="CountryOriginName",
                                                                         "Country of Asylum Name"="CountryAsylumName", 
                                                                         "Resettlement arrivals"="RST",
                                                                         "Refugee returns"="RET",
                                                                         "Naturalisation"="NAT",
                                                                         "IDP returns"="RDP" ))
save(solutions, file =  "data/solutions.RData")



url <- paste( 'https://s3.eu-central-1.amazonaws.com/hdx-ckan-filestore-prod/resources/295cd9e4-8464-43ee-ad17-47196991a1f7/demographics_residing_world.csv') 
download.file(url, destfile = "data-raw/demographics_residing_world.csv" )

demographics_residing <- read_csv("data-raw/demographics_residing_world.csv", 
                                        col_types = cols(location = col_character(), 
                                                         urbanRural = col_character(), accommodationType = col_character(), 
                                                         `Female 0-4` = col_integer(), `Female 5-11` = col_integer(), 
                                                         `Female 12-17` = col_integer(), `Female 18-59` = col_integer(), 
                                                         `Female 60 or more` = col_integer(), 
                                                         `Female Unknown` = col_integer(), 
                                                         `Female Total` = col_integer(), `Male 0-4` = col_integer(), 
                                                         `Male 5-11` = col_integer(), `Male 12-17` = col_integer(), 
                                                         `Male 18-59` = col_integer(), `Male 60 or more` = col_integer(), 
                                                         `Male Unknown` = col_integer(), `Male Total` = col_integer(), 
                                                         Total = col_integer()))
demographics_residing <- demographics_residing[-1,]
sinew::makeOxygen(demographics_residing, add_fields = "source")
# Rename column to have proper Variable names
demographics <- plyr::rename(demographics_residing, c("Country of Origin Code"="CountryOriginCode",
                                                         "Country of Asylum Code"="CountryAsylumCode", 
                                                         "Country of Origin Name"="CountryOriginName",
                                                         "Country of Asylum Name"="CountryAsylumName",  
                                                         "Female 0-4"="Female04", 
                                                         "Female 5-11"="Female511", 
                                                         "Female 12-17"="Female1217", 
                                                         "Female 18-59"="Female1859",
                                                         "Female 60 or more"="Female60ormore",
                                                         "Female Unknown"="FemaleUnknown",
                                                         "Female Total"="FemaleTotal", 
                                                         "Male 0-4"="Male04", 
                                                         "Male 5-11"="Male511", 
                                                         "Male 12-17"="Male1217", 
                                                         "Male 18-59"="Male1859",
                                                         "Male 60 or more"="Male60ormore",
                                                         "Male Unknown"="MaleUnknown",
                                                         "Male Total"="MaleTotal")
                                                         )
save(demographics, file =  "data/demographics.RData")


url <- paste( 'https://s3.eu-central-1.amazonaws.com/hdx-ckan-filestore-prod/resources/6f7aded5-f5e7-482b-86d8-ccfe6994e261/asylum_decisions_residing_world.csv') 
download.file(url, destfile = "data-raw/asylum_decisions__residing_world.csv" )

asylum_decisions_residing <- read_csv("data-raw/asylum_decisions_residing_world.csv", 
                                            col_types = cols(`Decisions Average Persons Per Case` = col_integer(), 
                                                             Recognized = col_integer(), `Complementary Protection` = col_integer(), 
                                                             `Otherwise Closed` = col_integer(), 
                                                             Rejected = col_integer(), `Total Decided` = col_integer()))
asylum_decisions_residing <- asylum_decisions_residing[-1,]
sinew::makeOxygen(asylum_decisions_residing, add_fields = "source")
# Rename column to have proper Variable names
names(asylum_decisions_residing)
asylum_decisions <- plyr::rename(asylum_decisions_residing, c("Country of Origin Code"="CountryOriginCode",
                                                               "Country of Asylum Code"="CountryAsylumCode", 
                                                               "Country of Origin Name"="CountryOriginName",
                                                               "Country of Asylum Name"="CountryAsylumName", 
                                                               "Procedure Type"="ProcedureType",                    
                                                               "Procedure Name"="ProcedureName",                    
                                                               "Decision Type Code"="DecisionTypeCode",                
                                                               "Decision Data Type"="DecisionDataType",                
                                                               "Decision Data"="DecisionData",                     
                                                               "Decisions Average Persons Per Case"= "DecisionsAveragePersonsPerCase",
                                                               "Complementary Protection"="ComplementaryProtection",          
                                                               "Otherwise Closed" ="OtherwiseClosed",                
                                                               "Total Decided" = "TotalDecided"
                                                               )
)
save(asylum_decisions, file =  "data/asylum_decisions.RData")



url <- paste( 'https://s3.eu-central-1.amazonaws.com/hdx-ckan-filestore-prod/resources/90aebc46-0557-4230-af47-081014a78c69/asylum_applications_residing_world.csv') 
download.file(url, destfile = "data-raw/asylum_applications_residing_world.csv" )
asylum_applications_residing <- read_csv("data-raw/asylum_applications_residing_world.csv", 
                                               col_types = cols(`Application Average Persons Per Case` = col_integer(), 
                                                                `Number of Applications` = col_integer()))

asylum_applications_residing <- asylum_applications_residing[-1,]
sinew::makeOxygen(asylum_applications_residing, add_fields = "source")

names(asylum_applications_residing)
# Rename column to have proper Variable names
asylum_applications <- plyr::rename(asylum_applications_residing, c("Country of Origin Code"="CountryOriginCode",
                                                                       "Country of Asylum Code"="CountryAsylumCode", 
                                                                       "Country of Origin Name"="CountryOriginName",
                                                                       "Country of Asylum Name"="CountryAsylumName", 
                                                                       "Procedure Type"="ProcedureType",                      
                                                                       "Procedure Name"="ProcedureName",                      
                                                                       "Application Type Code"="ApplicationTypeCode",               
                                                                       "Application Type"="ApplicationType",                    
                                                                       "Application Data Type"="ApplicationDataType",               
                                                                       "Application Data"="ApplicationData",                    
                                                                       "Application Average Persons Per Case"="ApplicationAveragePersonsPerCase",
                                                                       "Number of Applications"="NumberApplications" 
)
)
save(asylum_applications, file =  "data/asylum_applications.RData")


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

imf <- readxl::read_excel("data-raw/WEO_data.xlsx",sheet = "Sheet1")

sinew::makeOxygen(imf, add_fields = "source")

save(imf, file =  "data/GDP_IMF.RData")

