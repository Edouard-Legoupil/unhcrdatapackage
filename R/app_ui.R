#' Assemble UI modules
#'
#' @return Front end of app
#'
#' @import shiny
#' @import shinydashboard
#' @import shinydashboardPlus
#' @importFrom unhcrshiny theme_shinydashboard_unhcr
#' @keywords internal
#'
#'
#' @export
app_ui <- function() {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    ## Function to style the app
    unhcrshiny::theme_shinydashboard_unhcr(),
    # List the first level UI elements here
    dashboardPage(
      shinydashboardPlus::dashboardHeader(title = "Data Stories on Forced Displacement",
                      #   titleWidth = "27%"
                    titleWidth = 400 #,
                   # uiOutput("header_help", inline = TRUE),
                      ),
      shinydashboardPlus::dashboardSidebar(
       # id = "db_sidebar",
       # minified = TRUE, collapsed = FALSE, width = "17%",
        shinydashboard::sidebarMenu(
          id = "tabs", 
          shinydashboard::menuItem(" Data Story Telling", tabName = "Stories", icon = icon("bookmark")),
          mod_input_ui("input_1"),
          p(style = 'color:#0072BC;'," ... then explore below!"),
          shinydashboard::menuItem("Categories", tabName = "categories", icon = icon("person-walking-arrow-right")),
          shinydashboard::menuItem("Origins", tabName = "origin", icon = icon("chevron-right")),
          shinydashboard::menuItem("Destinations", tabName = "destination", icon = icon("chevron-left")),
          shinydashboard::menuItem("Demographics", tabName = "demographics", icon = icon("bars-progress")),
          shinydashboard::menuItem("Processing", tabName = "processing", icon = icon("spinner")),
          shinydashboard::menuItem("Solutions", tabName = "solution", icon = icon("people-arrows")),
          shinydashboard::menuItem("Migrants", tabName = "migrants", icon = icon("globe"))
        )
      ), ## End sidebarmenu
      dashboardBody(
        shinydashboard::tabItems(
         # id =  "tabscontrol",
          # First tab content
          # Second tab content
          shinydashboard::tabItem(tabName = "Stories",  
                  #mod_home_ui("home_1")
                  #Jumbotrons are pretty, they make nice headers
                  tags$div(class = "jumbotron text-left", 
                           style = "margin-bottom:15px;margin-top:15px;margin-left:15px",
                           fluidRow(
                             column( 10, 
                                     tags$h1(style = 'color:#0072BC;',
                                             style = 'margin-bottom:0px;margin-top:0px',
                                             '  7 Key Questions on Forced Displacement')),
                             column( 2, 
                                     tags$i(style = 'font-size: 7rem;color:#0072BC;',
                                            class = "fa-solid fa-bullhorn")
                             )
                           ) ,
                           hr(),
                           fluidRow(
                             column( 4,  
                                     tags$h4(class = 'jumbotron-heading', 
                                             style = 'margin-left:25px',
                                             HTML('<em> "Numbers have an important story to tell. They rely on YOU to give them a voice!"</em>') ) ),
                             column( 8, 
                                     tags$p(class = 'jumbotron-heading', 
                                            'Data Storytelling is the art of presenting data with a contextual narrative, or in other words, to put data insights into context in order to inspire action and to influence an audience.' ) 
                             )
                           ) 
                  ), ## end jumbotron..
                  
                  br(),
                  fluidRow(
                    column( 6, 
                            p ('UNHCR ' ,
                               tags$a(href="https://www.unhcr.org/refugee-statistics/",
                                      "Refugee Population Statistics Database") ,
                               " allows to explore, by country, different topics in relation with",
                               tags$a(href="https://egrisstats.org/recommendations/", "Forced Displacement"), ": "),
                            tags$ol(
                              tags$li("How have the various " ,
                                      actionLink(inputId =  "link_to_categories",
                                                 label = "categories"),
                                      " of forcibly displaced and stateless people evolved over time?"), 
                              
                              tags$li("Which countries are the primary countries of " ,
                                      actionLink(inputId =  "link_to_origin",
                                                 label = "origin"),
                                      " for people forced to flee across an international border?"), 
                              tags$li("Which countries are the primary " ,
                                      actionLink(inputId =  "link_to_destination",
                                                 label = "destination"),
                                      " country for Asylum?"), 
                              tags$li("What are the " ,
                                      actionLink(inputId =  "link_to_demographics",
                                                 label = "demographic"),
                                      " profiles of Forcibly Displaced People?"), 
                              tags$li("Is the asylum " ,
                                      actionLink(inputId =  "link_to_processing",
                                                 label = "processing"),
                                      " capacity sufficient?"), 
                              tags$li("What are the trends in terms of " ,
                                      actionLink(inputId =  "link_to_solutions",
                                                 label = "Solutions"),
                                      " for forced displacement situations?"), 
                              tags$li("What is the proportion of Forcibly Displaced People among the total " ,
                                      actionLink(inputId =  "link_to_migrants",
                                                 label = "migrant"),
                                      " population?")
                            ),
                            hr(),
                            p(" This app provides access a ",
                              tags$strong("Chart Library"), 
                              "that is organised around the 7 questions above and brings together the plots that are the most commonly used in UNHCR reports and factsheets.",
                              
                              "To avoid misinterpretation, please carefully consult the ",
                              tags$a(href="https://www.unhcr.org/refugee-statistics/methodology/", "methodology pages") ,   
                              " for the definitions of who is included in these statistics on forcibly displaced and Stateless persons and how UNHCR collects this information."),
                            hr(),
                            p( "The app is designed for Information Managers, Economist, Reporting officers, Data Journalist as well as anyone interested in Forced Displacement.
                               
                               Not only, you will enhance your data literacy but also you will save the time that would be needed to rebuild each chart on your own. 
                               If you detect any issue on this site, or if you have an idea for a new chart to add in the library, please fill a ", 
                               tags$a(href="https://github.com/Edouard-Legoupil/unhcrdatapackage/issues/new/choose", "ticket here")
                            )
                    ),
                    column( 6,
                            shinydashboardPlus::carousel(
                              id = "appoverview",
                              width = '100%',
                              shinydashboardPlus::carouselItem(
                                #caption = " Browse the library",
                                tags$img(src = "www/slide0.png")
                              ),
                              shinydashboardPlus::carouselItem(
                                #caption = " Browse the library",
                                tags$img(src = "www/slide1.png")
                              ),
                              shinydashboardPlus::carouselItem(
                                # caption = " Highlight Message & Insights",
                                tags$img(src = "www/slide2.png")
                              ),
                              shinydashboardPlus::carouselItem(
                                #caption = " Overlay Interpretation",
                                tags$img(src = "www/slide3.png")
                              ),
                              shinydashboardPlus::carouselItem(
                                # caption = " Apply Data Filters",
                                tags$img(src = "www/slide4.png")
                              ),
                              shinydashboardPlus::carouselItem(
                                # caption = " Export your stories",
                                tags$img(src = "www/slide5.png")
                              )
                            ) # end carousel
                    ) # End column
                  )   ## End fluid..
                  
                  
                  ),
          ## Getting the different golem modules - on the UI side.. 
          shinydashboard::tabItem(tabName = "categories",   mod_categories_ui("categories_1") ),
          shinydashboard::tabItem(tabName = "origin",       mod_origin_ui("origin_1") ),
          shinydashboard::tabItem(tabName = "destination",  mod_destination_ui("destination_1") ),
          shinydashboard::tabItem(tabName = "demographics", mod_demographics_ui("demographics_1") ),
          shinydashboard::tabItem(tabName = "processing",   mod_processing_ui("processing_1") ),
          shinydashboard::tabItem(tabName = "solution",     mod_solution_ui("solution_1") ),
          shinydashboard::tabItem(tabName = "migrants",     mod_migrants_ui("migrants_1") )
          ), # End items
        id = "tabs"
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
    #tags$link(rel="stylesheet", type="text/css", href="www/custom.css"),
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
