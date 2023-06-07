#' Assemble UI modules
#'
#' @return Front end of app
#'
#' @import shiny
#' @import shinydashboard
#' @keywords internal
#'
#'
#' @export
app_ui <- function() {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    ## Function to style the app
    theme_shinydashboard_unhcr(),
    # List the first level UI elements here
    dashboardPage(
      dashboardHeader(title = "Data Literacy on Forced Displacement",
                      
                       titleWidth = 400 ),
      dashboardSidebar(
        sidebarMenu(
          menuItem(" Data Story Telling", tabName = "Stories", icon = icon("bookmark")),
          mod_input_ui("input_1"),
          p(style = 'color:#0072BC;'," ... then explore below!"),
          menuItem("Categories", tabName = "categories", icon = icon("person-walking-arrow-right")),
          menuItem("Origin", tabName = "origin", icon = icon("chevron-right")),
          menuItem("Destination", tabName = "destination", icon = icon("chevron-left")),
          menuItem("Demographics", tabName = "demographics", icon = icon("bars-progress")),
          menuItem("Processing", tabName = "processing", icon = icon("spinner")),
          menuItem("Solution", tabName = "solution", icon = icon("people-arrows")),
          menuItem("Migrants", tabName = "migrants", icon = icon("globe"))
        )
      ), ## End sidebarmenu
      dashboardBody(
        tabItems(
          # First tab content
          # Second tab content
          tabItem(tabName = "Stories",mod_home_ui("home_1")),
          ## Getting the different golem modules - on the UI side.. 
          tabItem(tabName = "categories",   mod_categories_ui("categories_1") ),
          tabItem(tabName = "origin",       mod_origin_ui("origin_1") ),
          tabItem(tabName = "destination",  mod_destination_ui("destination_1") ),
          tabItem(tabName = "demographics", mod_demographics_ui("demographics_1") ),
          tabItem(tabName = "processing",   mod_processing_ui("processing_1") ),
          tabItem(tabName = "solution",     mod_solution_ui("solution_1") ),
          tabItem(tabName = "migrants",     mod_migrants_ui("migrants_1") )
          ) # End items
        ) ## dashboard Body 
      ), # End dashboard page
    hr(id="beta")
    ) #End Tag list
  }


#' @import shiny
golem_add_external_resources <- function(){

  addResourcePath(
    'www', system.file('app/www', package = "unhcrdatapackage")
  )

  tags$head(
    golem::activate_js(),
    golem::favicon(),
    
    # <script src="https://kit.fontawesome.com/6e9406f45f.js" crossorigin="anonymous"></script>
    tags$script(src = "https://kit.fontawesome.com/6e9406f45f.js"),
    tags$title("unhcrdatapackage"),
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    tags$link(rel="stylesheet", type="text/css", href="www/custom.css"),
    tags$meta(charset="UTF-8"),
    tags$meta(name="description", content="Data Literacy on Forced Displacement"),
    tags$meta(name="keywords", content="Refugee, UNHCR"),
    tags$meta(name="viewport", content="width=device-width, initial-scale=1.0"),
    tags$meta(name="twitter:card", content="summary_large_image"),
    tags$meta(name="twitter:site", content="@Refugees"),
    tags$meta(name="twitter:creator", content="@edouard_lgp"),
    tags$meta(name="twitter:title", content="Data Literacy on Forced Displacement"),
    tags$meta(name="twitter:description", content="Numbers have an important story to TELL, They rely on YOU to give them a voice!"),
    tags$meta(name="twitter:url", content="https://rstudio.unhcr.org/Data_Literacy/"),
    tags$meta(name="twitter:image", content="https://edouard-legoupil.github.io/unhcrdatapackage/reference/figures/hex-UnhcrDataPackage.png")
    

  )
}
