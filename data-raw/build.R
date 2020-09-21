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

ckanr::ckanr_setup("https://data.humdata.org")

ckanr::package_search("name:unhcr-population-data-for-world", as = "table") %>% 
  purrr::pluck("results", "resources", 1, "url") %>% 
  purrr::walk(~ckanr::ckan_fetch(., store = "disk", path = fs::path("data-raw", fs::path_file(.))))

read_sans_hxl <- function(file, ...) {
  hdrs <- readr::read_csv(file, n_max = 0) %>% names()
  
  readr::read_csv(file, col_names = hdrs, skip = 2, ...)
}

end_year_population_totals <- read_sans_hxl("data-raw/end_year_population_totals_residing_world.csv")

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





solutions_residing <- read_sans_hxl("data-raw/solutions_residing_world.csv")

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



demographics_residing <- read_sans_hxl("data-raw/demographics_residing_world.csv")

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


asylum_decisions_residing <- read_sans_hxl("data-raw/asylum_decisions_residing_world.csv")

sinew::makeOxygen(asylum_decisions_residing, add_fields = "source")
# Rename column to have proper Variable names
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



asylum_applications_residing <- read_sans_hxl("data-raw/asylum_applications_residing_world.csv")

sinew::makeOxygen(asylum_applications_residing, add_fields = "source")

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


reference <- readr::read_csv("data-raw/reference.csv")
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



