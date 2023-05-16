# Set options here
options(golem.app.prod = FALSE) # TRUE = production mode, FALSE = development mode

# Detach all loaded packages and clean your environment
golem::detach_all_attached()
# rm(list=ls(all.names = TRUE))

# Document and reload your package
golem::document_and_reload()

# Run the application
reactlog::reactlog_enable()
options(shiny.reactlog=TRUE) 
unhcrdatapackage::run_app(display.mode="showcase")
shiny::reactlogShow()


## Test a module
golem::detach_all_attached()
golem::document_and_reload()
ui <- mod_categories_ui( "my_module" )
server <- function(input,output,session){
  callModule( mod_categories_server, "my_module", session )
}
shiny::shinyApp(ui, server)


#mod_categories_ui("categories_1")

## To be copied in the server
# mod_categories_server("categories_1")

ui <- mod_categories_ui("categories_1")
server <- function(input,output,session){
  callModule( mod_categories_server("categories_1"), session )
}
shiny::shinyApp(ui, server)
