

# function that creates a help pop up window 
header_help_icon <- function(id_modal){
  
  tags$li(class = "dropdown",
          htmltools::tags$a(shiny::icon("info-circle", 
                                        id = "header_help_icon"),
                            style = "color: #FFFFFF; position: absolute; right: 40px; top: 5px; font-size: 30px;",
                            href = "#")
  ) |>
    bsplus::bs_attach_modal(id_modal = id_modal)
  
}

# Modal help --------------------------------------------------------------

help_modal <- function(){
  bsplus::bs_modal(
    id = "welcome_modal",
    title = "Welcome",
    body = "An intro on the package",
    size = "large"
  )
}