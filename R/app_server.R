#' @import shiny
app_server <- function(input, output, session) {

  wd <- setwd(getShinyOption(".appDir", getwd()))
  on.exit(setwd(wd))
  
  reactiveParameters <- reactiveValues() 
  
  #reactiveParameters <- reactiveValues(starting = TRUE)
  #session$onFlushed(function() {
  #  reactiveParameters$starting <- FALSE   }) 

 ## get the different module on server side...
  #  mod_input_server("input_1" )
  mod_home_server("home_1")
  mod_input_server("input_1", reactiveParameters = reactiveParameters)
  mod_categories_server("categories_1", reactiveParameters = reactiveParameters) 
  mod_origin_server("origin_1", reactiveParameters = reactiveParameters) 
  mod_destination_server("destination_1", reactiveParameters = reactiveParameters) 
  mod_demographics_server("demographics_1", reactiveParameters = reactiveParameters) 
  mod_processing_server("processing_1", reactiveParameters = reactiveParameters) 
  mod_solution_server("solution_1", reactiveParameters = reactiveParameters) 
  mod_migrants_server("migrants_1", reactiveParameters = reactiveParameters) 

}
