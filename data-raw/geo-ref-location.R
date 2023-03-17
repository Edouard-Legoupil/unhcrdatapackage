## Georeference location from the demographic tables 

location <- unhcrdatapackage::demographics |>
            dplyr::select( CountryAsylumCode, CountryAsylumName, location) |> ##, urbanRural
            unique()


locat <- unhcrdatapackage::demographics |>
  dplyr::select( CountryAsylumCode, CountryAsylumName, location, 
                  #urbanRural, accommodationType, 
                 ) |>
  dplyr::distinct()

## geting map ref from popdata 

# popdata::pd_login()
# 
# demo <- popdata::popdata(
#   report = c("asr" ),
#   table = c( "demographics"),
#   year = 2021,
#   quiet = getOption("popdata_quiet")
# )
# 
# locpcode <- demo |>
#   dplyr::select(  asylum, location, latitude, longitude, 
#                   #urbanRural, accommodationType,
#                   location_pcode, location_level, location_id) |>
#   dplyr::distinct()
# 
# 
# 
# 
# locpcode |>
#   write.csv("data-raw/locpcode.csv", row.names = FALSE)

 
locpcode <- readr::read_csv("data-raw/locpcode.csv")
#View(locpcode)

locpcode <- locpcode |>
            dplyr::left_join(unhcrdatapackage::reference |> 
                               dplyr::select( UNHCRcode, iso_3),
                             by = c("asylum" = "UNHCRcode"))

sinew::makeOxygen(locpcode, add_fields = "source")
 
save(locpcode, file =  "data/locpcode.RData")

# cat(sinew::makeOxygen("locpcode"),
#     file = "R/locpcode.R")
rstudioapi::navigateToFile("R/locpcode.R")
