## Migrant data tidy

# https://www.un.org/development/desa/pd/sites/www.un.org.development.desa.pd/files/undesa_pd_2020_ims_stock_by_sex_destination_and_origin.xlsx

desa <- readxl::read_excel("data-raw/undesa_pd_2020_ims_stock_by_sex_destination_and_origin.xlsx", 
                                                                     sheet = "Table 1", skip = 9)
names(desa)
desa1 <- janitor::clean_names(desa) 
library(tidyverse)
names(desa1)
# desa2 <-rename(desa,
#                index = "Index",                                                    
#                CountryDestinationName =  "Region, development group, country or area of destination",
#                Notes = "Notes of destination",                                     
#                CountryOriginCode = "Location code of destination" ,                             
#                datatype =  "Type of data of destination",     
#                CountryOriginName =  "Region, development group, country or area of origin",
#                CountryDestinationCode = "Location code of origin",                                 
#                year.1990.all <-  "1990...8") ,                                                 
#                year.1995.all <-  "1995...9",                                                 
#                year.2000.all <-  "2000...10",                                                 
#                year.2005.all <-  "2005...11",                                                 
#                year.2010.all <-  "2010...12",                                                 
#                year.2015.all <-  "2015...13",                                                 
#                year.2020.all <-  "2020...14",                                                 
#                year.1990.male <-  "1990...15",                                                 
#                year.1995.male  <-  "1995...16",                                                 
#                year.2000.male  <-  "2000...17",                                                 
#                year.2005.male  <-  "2005...18",                                                 
#                year.2010.male  <-  "2010...19",                                                 
#                year.2015.male  <-  "2015...20",                                                 
#                year.2020.male  <-  "2020...21",                                                 
#                year.1990.female  <-  "1990...22",                                                 
#                year.1995.female <-  "1995...23",                                                 
#                year.2000.female <-  "2000...24",                                                 
#                year.2005.female <-  "2005...25",                                                 
#                year.2010.female <-  "2010...26",                                                 
#                year.2015.female <-  "2015...27",                                                 
#                year.2020.female <-  "2020...28" ) 

desa2 <-rename(desa1,
               index = "index",                                                    
               CountryOriginName =  "region_development_group_country_or_area_of_destination",
               Notes = "notes_of_destination",                                     
               CountryOriginM49 = "location_code_of_destination" ,                             
               datatype =  "type_of_data_of_destination",     
               CountryDestinationName =  "region_development_group_country_or_area_of_origin",
               CountryDestinationM49 = "location_code_of_origin",                                 
               year.1990.all =  "x1990_8" ,                                               
                year.1995.all =  "x1995_9",                                                 
                year.2000.all =  "x2000_10",                                                 
                year.2005.all =  "x2005_11",                                                 
                year.2010.all =  "x2010_12",                                                 
                year.2015.all =  "x2015_13",                                                 
                year.2020.all =  "x2020_14",                                                 
                year.1990.male =  "x1990_15",                                                 
                year.1995.male  =  "x1995_16",                                                 
                year.2000.male  =  "x2000_17",                                                 
                year.2005.male  =  "x2005_18",                                                 
                year.2010.male  =  "x2010_19",                                                 
                year.2015.male  =  "x2015_20",                                                 
                year.2020.male  =  "x2020_21",                                                 
                year.1990.female  =  "x1990_22",                                                 
                year.1995.female =  "x1995_23",                                                 
                year.2000.female =  "x2000_24",                                                 
                year.2005.female =  "x2005_25",                                                 
                year.2010.female =  "x2010_26",                                                 
                year.2015.female =  "x2015_27",                                                 
                year.2020.female =  "x2020_28" )

## let's check the reference to identify aggregation units to remove 
geounit <- as.data.frame(unique(desa2[ , c("CountryDestinationName","CountryDestinationM49")])) %>%
       dplyr::left_join( y= unhcrdatapackage::reference, 
                   by = c("CountryDestinationM49" = "M49_code")) %>%
  filter(is.na(iso_3)) %>%
  head(44)

#ref2 <- as.data.frame(unique(desa2[ , c("CountryOriginName","CountryOriginM49")]))

## Remove the aggregation geounit... to get correct counts...
desa3 <-  desa2[  !(desa2$CountryOriginM49 %in% geounit$CountryDestinationM49) &
                   !(desa2$CountryDestinationM49 %in% geounit$CountryDestinationM49) , ]
       


#names(desa2)

#levels(as.factor(desa2$datatype))
## Nothing there...

## let's put in long format
migrants <- reshape2::melt(desa3,
                                        # ID variables - all the variables to keep but not split apart on
                                        id.vars=c( "index",
                                                   "CountryOriginName",
                                                   "CountryOriginM49" ,
                                                   "CountryDestinationName",
                                                   "CountryDestinationM49" ),
                                        # The source columns
                                        measure.vars=c("year.1990.all",         
                                                       "year.1995.all",          "year.2000.all" ,        
                                                       "year.2005.all",          "year.2010.all" ,        
                                                       "year.2015.all",          "year.2020.all" ,        
                                                       "year.1990.male",         "year.1995.male" ,       
                                                       "year.2000.male",         "year.2005.male" ,       
                                                       "year.2010.male",         "year.2015.male" ,       
                                                       "year.2020.male",         "year.1990.female",      
                                                       "year.1995.female",       "year.2000.female",      
                                                       "year.2005.female",       "year.2010.female" ,     
                                                       "year.2015.female" ,      "year.2020.female"),
                                        # Name of the destination column that will identify the original
                                        # column that the measurement came from
                                        variable.name="Measure",
                                        value.name="Value")

migrants <- migrants[migrants$Value > 0, ]
migrants$Year <- substr(migrants$Measure, 6,9)  
migrants$Gender <- substr(migrants$Measure, 11, nchar(as.character(migrants$Measure)))
migrants$Measure <- NULL

### Let's check the aggregation is correct by comparing aggregation to worldcount...
immigrant <-  migrants %>%  
  filter(Gender == "all") %>%
  group_by(Year, CountryDestinationName) %>%
  summarise(Emigrant = sum(Value) )  %>%
  filter(Year ==2020) %>%
  filter(CountryDestinationName =="France*")

immigrant
desa2[ desa2$CountryOriginName== "WORLD" & desa2$CountryDestinationName =="France*", c("year.2020.all") ]

emigrant  <- migrants %>% 
  filter(Gender == "all") %>%
  group_by(Year, CountryOriginName) %>%
  summarise(Immigrant = sum(Value) ) %>%
  filter(Year ==2020) %>%
  filter(CountryOriginName =="France*")

emigrant 
desa2[ desa2$CountryDestinationName== "WORLD" & desa2$CountryOriginName =="France*", c("year.2020.all") ]
  



sinew::makeOxygen(migrants, add_fields = "source")

# https://www.un.org/development/desa/pd/sites/www.un.org.development.desa.pd/files/undesa_pd_2020_international_migrant_stock_documentation.pdf
save(migrants, file =  "data/migrants.RData")
