
## Reference ######

reference <- readr::read_csv(here::here("data-raw","reference.csv"))

# ABCCode <- readr::read_csv(here::here("data-raw","ABCCode.csv"))
# 
# reference2 <- 
#   reference |>
#     dplyr::mutate( code_opType = substr(code_op, 5,7)) |>
#               dplyr::left_join(ABCCode) |>
#    dplyr::select( iso_3, UNHCRcode, M49_code, ctryname, namepostat, namepostat2, gis_name, 
#                   UNHCRBureau, main_office,  
#                   code_op, code_opType, ABCCode, OpType, 
#                   hcr_region, hcr_subregion,CONTINENT, REGION_UN, SUBREGION, REGION_WB, 
#                   Latitude, Longitude, scalerank, 
#                   LABELRANK, SOVEREIGNT, SOV_A3, ADM0_DIF, LEVEL, TYPE, ADMIN, ADM0_A3, 
#                   ECONOMY, 
#                   INCOME_GRP, POP_EST, POP_RANK, GDP_MD_EST, POP_YEAR, LASTCENSUS)
# 
# paste(noquote(names(reference2)), collapse = ', ') |> cat()
# 
# reference2 |>
#               write.csv( here::here("data-raw","reference2.csv"), na = "", row.names = FALSE) 


save(reference, file =  here::here("data","reference.RData"))
sinew::makeOxygen(reference, add_fields = "source")
tools::resaveRdaFiles(here::here("data","reference.RData"),compress="xz")

