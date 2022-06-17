## Georeference location from the demographic tables 

location <- unhcrdatapackage::demographics |>
            dplyr::select( CountryAsylumCode, CountryAsylumName, location) |> ##, urbanRural
            unique()
