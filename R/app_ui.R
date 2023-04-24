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
      dashboardHeader(title = "Data Literacy on Forced Displacement",
                      
                       titleWidth = 400 #,
                      #selectInput("hcr_region","Filter on a region",choices = sort(unique(reference$hcr_region)),multiple=F,selected="The Americas")
                      # # Dropdown menu for messages
                      # dropdownMenu(type = "messages", badgeStatus = "success",
                      #              messageItem("Support Team",
                      #                          "This is the content of a message.",
                      #                          time = "5 mins"
                      #              ),
                      #              messageItem("Support Team",
                      #                          "This is the content of another message.",
                      #                          time = "2 hours"
                      #              ),
                      #              messageItem("New User",
                      #                          "Can I get some help?",
                      #                          time = "Today"
                      #              )
                      # ),
                      # 
                      # # Dropdown menu for notifications
                      # dropdownMenu(type = "notifications", badgeStatus = "warning",
                      #              notificationItem(icon = icon("users"), status = "info",
                      #                               "5 new members joined today"
                      #              ),
                      #              notificationItem(icon = icon("warning"), status = "danger",
                      #                               "Resource usage near limit."
                      #              ),
                      #              notificationItem(icon = icon("shopping-cart", lib = "glyphicon"),
                      #                               status = "success", "25 sales made"
                      #              ),
                      #              notificationItem(icon = icon("user", lib = "glyphicon"),
                      #                               status = "danger", "You changed your username"
                      #              )
                      # ),
                      # 
                      # # Dropdown menu for tasks, with progress bar
                      # dropdownMenu(type = "tasks", badgeStatus = "danger",
                      #              taskItem(value = 20, color = "aqua",
                      #                       "Refactor code"
                      #              ),
                      #              taskItem(value = 40, color = "green",
                      #                       "Design new layout"
                      #              ),
                      #              taskItem(value = 60, color = "yellow",
                      #                       "Another task"
                      #              ),
                      #              taskItem(value = 80, color = "red",
                      #                       "Write documentation"
                      #              )
                      # )
                      
                      
                      ),
      dashboardSidebar(
        sidebarMenu(
          menuItem("Stories", tabName = "Stories", icon = icon("bookmark")),
          menuItem("Categories", tabName = "Categories", icon = icon("person-walking-arrow-right")),
          menuItem("Origin", tabName = "Origin", icon = icon("chevron-right")),
          menuItem("Destination", tabName = "Destination", icon = icon("chevron-left")),
          menuItem("Demographics", tabName = "Demographics", icon = icon("bars-progress")),
          menuItem("Processing", tabName = "Processing", icon = icon("spinner")),
          menuItem("Solution", tabName = "Solution", icon = icon("people-arrows")),
          menuItem("Migrants", tabName = "Migrants", icon = icon("globe"))
        )
      ), ## End sidebarmenu
      dashboardBody(
        tabItems(
          # First tab content
          # Second tab content
          tabItem(tabName = "Stories",
                  #Jumbotrons are pretty, they make nice headers
                  tags$div(class = "jumbotron text-left", 
                           style = "margin-bottom:5px;margin-top:5px;margin-left:15px",
                           tags$h1(style = 'color:#0072BC;',
                                  style = 'margin-bottom:0px;margin-top:0px',
                                   '7 Key Questions on Forced Displacement'),
                           tags$h3(class = 'jumbotron-heading', 
                                   style = 'margin-left:25px',
                                   ' Numbers have an important story to tell.' ),
                          tags$h3(class = 'jumbotron-heading', 
                                  style = 'margin-left:25px',
                                  ' They rely on YOU to give them a voice!')
                   ), ## end jumbotron..
                    p(' 1. How the different Categories of Population of concern to UNHCR are evolving over time?'), 
                    p('2. What are the main countries of Origin of Forced Displacement across Borders?'),  
                    p('3. What are the main countries of Destination of Asylum of Forced Displacement across Borders?'),
                    p('4. What are the Demographics profiles of Forcibly Displaced People in relation with the host population?'),
                    p('5. Is the asylum Processing capacity in relation with the demand?'),
                    p('6. What are the trends in terms of Solutions?'),
                    p('7. What is the share of Forcibly Displaced People among total Migrants?') ,
                  
                  
                  p( ' ') ,
                  p( ' ') ,
                  p( ' ') ,
                  p( ' ') ,
                  p ('This app conveniently bring together a series of predefined plots in order to improve data literacy and facilitate the creation of 
                  [persuasive data stories](https://edouard-legoupil.github.io/unhcrdatapackage/tuto/tutorial.html). 
                  Each plot is created through a function that provides a recipe 
                     that creates a re-usable chart in line with a [Divisible Content Strategy](https://www.columnfivemedia.com/divisible-content-strategy-gives-brand-less/).
                     Those functions are then rendered through predefined Report templates for Countries or Regions, generated either as html, PDF or PowerPoint presentations.
                     You may [enhance the charts story-telling ability](https://edouard-legoupil.github.io/unhcrdatapackage/articles/library.html)
                     by adjusting the message in the title, highlighting specific parts of the data or adding annotation to ease interpretation or provide more contextual background.')
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
