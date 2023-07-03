#' @import shiny
#' @importFrom  shinydashboard updateTabItems
app_server <- function(input, output, session) {

  wd <- setwd(getShinyOption(".appDir", getwd()))
  on.exit(setwd(wd))
  
  reactiveParameters <- reactiveValues() 
  
  
  # Help --------------------------------------------------------------------
  
  # help icon
  output$header_help <- renderUI({
    
    header_help_icon(id_modal = help_modal)
  })
  
  ## Get links to tab ----------------------------------------------------------
  observeEvent(input$link_to_categories, {
    #browser()
    shinydashboard::updateTabItems(session,  "tabs", selected =  "categories")
  })
  observeEvent(input$link_to_origin, {
    shinydashboard::updateTabItems(session,   "tabs", selected = "origin")
  })
  observeEvent(input$link_to_destination, {
    shinydashboard::updateTabItems(session,   "tabs", selected = "destination")
  })
  observeEvent(input$link_to_demographics, {
    shinydashboard::updateTabItems(session,   "tabs", selected = "demographics")
  })
  observeEvent(input$link_to_processing, {
    shinydashboard::updateTabItems(session,   "tabs", selected = "processing")
  })
  observeEvent(input$link_to_solution, {
    shinydashboard::updateTabItems(session,   "tabs", selected = "solution")
  })
  observeEvent(input$link_to_migrants, {
    shinydashboard::updateTabItems(session,   "tabs",selected =  "migrants")
  })

 ## get the different module on server side ----------------------------------------
  #  mod_input_server("input_1" )
  #mod_home_server("home_1")
  mod_input_server("input_1", reactiveParameters = reactiveParameters)
  mod_categories_server("categories_1", reactiveParameters = reactiveParameters) 
  mod_origin_server("origin_1", reactiveParameters = reactiveParameters) 
  mod_destination_server("destination_1", reactiveParameters = reactiveParameters) 
  mod_demographics_server("demographics_1", reactiveParameters = reactiveParameters) 
  mod_processing_server("processing_1", reactiveParameters = reactiveParameters) 
  mod_solution_server("solution_1", reactiveParameters = reactiveParameters) 
  mod_migrants_server("migrants_1", reactiveParameters = reactiveParameters) 

}
