#' Assemble UI modules
#'
#' @return Front end of app
#'
#' @import shiny
#' @import shinydashboard
#'
#'
#' @export
app_ui <- function() {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    theme_dashboard(),
    # List the first level UI elements here
    dashboardPage(
      dashboardHeader(title = "unhcrdatapackage"),
      dashboardSidebar(
        sidebarMenu(
          menuItem("Stories", tabName = "Stories", icon = icon("bookmark")),
          menuItem("1. Categories", tabName = "Categories", icon = icon("person-walking-arrow-right")),
          menuItem("2. Origin", tabName = "Origin", icon = icon("chevron-right")),
          menuItem("3. Destination", tabName = "Destination", icon = icon("chevron-left")),
          menuItem("4. Demographics", tabName = "Demographics", icon = icon("bars-progress")),
          menuItem("5. Processing", tabName = "Processing", icon = icon("spinner")),
          menuItem("6. Solution", tabName = "Solution", icon = icon("people-arrows")),
          menuItem("7. Migrants", tabName = "Migrants", icon = icon("globe"))
        )
      ), ## End sidebarmenu
      dashboardBody(
        tabItems(
          # First tab content
          # Second tab content
          tabItem(tabName = "Stories",
                  #Jumbotrons are pretty, they make nice headers
                  tags$div(class = "jumbotron text-center", 
                           style = "margin-bottom:0px;margin-top:0px",
                           tags$h1(class = 'jumbotron-heading', 
                                   style = 'margin-bottom:0px;margin-top:0px',
                                   'Numbers have an important story to tell.'),
                          tags$h1(class = 'jumbotron-heading', 
                                  style = 'margin-bottom:0px;margin-top:0px',
                                  ' They rely on YOU to give them a voice!'),
                           tags$h3(  'Seven Key Questions on Forced Displacement')
                   ), ## end jumbotron..
                    p(' 1. How the different Categories of Population of concern to UNHCR are evolving over time?'), 
                    p('2. What are the main countries of Origin of Forced Displacement across Borders?'),  
                    p('3. What are the main countries of Destination of Asylum of Forced Displacement across Borders?'),
                    p('4. What are the Demographics profiles of Forcibly Displaced People in relation with the host population?'),
                    p('5. Is the asylum Processing capacity in relation with the demand?'),
                    p('6. What are the trends in terms of Solutions?'),
                    p('7. What is the share of Forcibly Displaced People among total Migrants?') 
                  ),
          
          tabItem(tabName = "Categories",
                  fluidRow(   
                    ) ),
          tabItem(tabName = "Origin",
                  fluidRow( 
                  ) ),
          tabItem(tabName = "Destination",
                  fluidRow( 
                    ) ),
          tabItem(tabName = "Demographics",
                  fluidRow(  
                  ) ),
          tabItem(tabName = "Processing",
                  fluidRow( 
                    ) ),
          tabItem(tabName = "Solution",
                  fluidRow( 
                    ) ),
          tabItem(tabName = "Migrants",
                  fluidRow(      
                    ) )


          ) # End items
        ) ## dashboard Body 
      ) # End dashboard page
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
    tags$title("unhcrdatapackage")
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    #tags$link(rel="stylesheet", type="text/css", href="www/custom.css")

  )
}
