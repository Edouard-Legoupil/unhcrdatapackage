#' @import shiny
app_server <- function(input, output, session) {

  wd <- setwd(getShinyOption(".appDir", getwd()))
  on.exit(setwd(wd))
  ## Create folders to process
  # dir.create("data-raw")
  #dir.create("out")

  # dir
  # shinyDirChoose(input, 'dir',
  #                roots = c(name=getwd()))
  # dir <- reactive(input$dir)
  #output$dir <- renderPrint(dir())

  values <- reactiveValues(starting = TRUE)
  session$onFlushed(function() {
    values$starting <- FALSE   })
  ## Declaring Variables
  Data <- reactiveVal()




}
