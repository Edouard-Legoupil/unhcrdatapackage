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
    theme_dashboard(),
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
          tabItem(tabName = "Stories",
                  #Jumbotrons are pretty, they make nice headers
                  tags$div(class = "jumbotron text-left", 
                           style = "margin-bottom:15px;margin-top:15px;margin-left:15px",
                          fluidRow(
                            column( 10, 
                                    tags$h1(style = 'color:#0072BC;',
                                                style = 'margin-bottom:0px;margin-top:0px',
                                                '7 Key Questions on Forced Displacement')),
                            column( 2, 
                                    tags$i(style = 'font-size: 12rem;color:#0072BC;',
                                           class = "fa-solid fa-bullhorn")
                                    )
                          ) ,
                          fluidRow(
                            column( 4,  
                                    tags$h3(class = 'jumbotron-heading', 
                                                style = 'margin-left:25px',
                                                ' "Numbers have an important story to TELL' ),
                                    tags$h3(class = 'jumbotron-heading', 
                                            style = 'margin-left:25px',
                                            ' They rely on YOU to give them a voice!"')),
                            column( 8, 
                                    tags$p(class = 'jumbotron-heading', 
                                            style = 'margin-left:25px',
                                            ' Data Literacy describes the ability to read, interpret, and argue with data.' ),
                                    tags$p(class = 'jumbotron-heading', 
                                            style = 'margin-left:25px',
                                            ' Data Storytelling is the art of presenting data
                                  with a contextual narrative, or in other words, to put
                                  data insights into context in order to inspire action and influence your audience.' )
                                    )
                          ) 
                   ), ## end jumbotron..
                  
                  br(),
                  br(),
                    p('  1. How the different Categories of Population of concern to UNHCR are evolving over time?'), 
                    p('  2. What are the main countries of Origin of Forced Displacement across Borders?'),  
                    p('  3. What are the main countries of Destination of Asylum of Forced Displacement across Borders?'),
                    p('  4. What are the Demographics profiles of Forcibly Displaced People in relation with the host population?'),
                    p('  5. Is the asylum Processing capacity in relation with the demand?'),
                    p('  6. What are the trends in terms of Solutions?'),
                    p('  7. What is the share of Forcibly Displaced People among total Migrants?') ,
                  br(),
                  br(),
                  p ('This app conveniently bring together a series of predefined plots in order to improve data literacy and facilitate the creation of',
                  tags$a(href="https://edouard-legoupil.github.io/unhcrdatapackage/tuto/tutorial.html", "persuasive data stories") ,
                  '. Each plot is created through a function that provides a recipe that creates a re-usable chart in line with a',
                  tags$a(href="https://www.columnfivemedia.com/divisible-content-strategy-gives-brand-less/", "Divisible Content Strategy"),
                  '. You may',
                  tags$a(href="https://edouard-legoupil.github.io/unhcrdatapackage/articles/library.html", "enhance the charts story-telling ability"),
                  ' by adjusting the message in the title, highlighting specific parts of the data or adding annotation to ease interpretation or provide more contextual background.')
                  ),
          
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
    
    # <script src="https://kit.fontawesome.com/6e9406f45f.js" crossorigin="anonymous"></script>
    tags$script(src = "https://kit.fontawesome.com/6e9406f45f.js"),
    tags$title("unhcrdatapackage")
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    #tags$link(rel="stylesheet", type="text/css", href="www/custom.css")

  )
}
