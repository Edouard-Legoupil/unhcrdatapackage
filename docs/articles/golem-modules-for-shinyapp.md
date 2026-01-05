# Golem Modules for ShinyApp

``` r
library(unhcrdatapackage)
#> Warning: replacing previous import 'shinydashboard::dashboardPage' by
#> 'shinydashboardPlus::dashboardPage' when loading 'unhcrdatapackage'
#> Warning: replacing previous import 'shinydashboard::dashboardSidebar' by
#> 'shinydashboardPlus::dashboardSidebar' when loading 'unhcrdatapackage'
#> Warning: replacing previous import 'shinydashboard::box' by
#> 'shinydashboardPlus::box' when loading 'unhcrdatapackage'
#> Warning: replacing previous import 'shinydashboard::dashboardHeader' by
#> 'shinydashboardPlus::dashboardHeader' when loading 'unhcrdatapackage'
#> Warning: replacing previous import 'shinydashboard::taskItem' by
#> 'shinydashboardPlus::taskItem' when loading 'unhcrdatapackage'
#> Warning: replacing previous import 'shinydashboard::notificationItem' by
#> 'shinydashboardPlus::notificationItem' when loading 'unhcrdatapackage'
#> Warning: replacing previous import 'shinydashboard::messageItem' by
#> 'shinydashboardPlus::messageItem' when loading 'unhcrdatapackage'
#> Registered S3 methods overwritten by 'ggalt':
#>   method                  from   
#>   grid.draw.absoluteGrob  ggplot2
#>   grobHeight.absoluteGrob ggplot2
#>   grobWidth.absoluteGrob  ggplot2
#>   grobX.absoluteGrob      ggplot2
#>   grobY.absoluteGrob      ggplot2
#> Warning: replacing previous import 'shinydashboardPlus::box' by
#> 'shinydashboard::box' when loading 'unhcrdatapackage'
```

## mod_home

this is a shared module that takes all the parameters to filter the
data..
<https://stackoverflow.com/questions/69172472/shiny-modules-inside-other-modules/69173076#69173076>

## Shared Modules

The app includes 2 shared modules -

- One for the selection of countries and year - that will be then passed
  on to all the plots
- One that takes the global reactive values - and the type of plot (form
  the library) as a parameter to output a ggplot2 charts

### mod_input

this is a shared module that takes all the parameters to filter the
data..
<https://stackoverflow.com/questions/69172472/shiny-modules-inside-other-modules/69173076#69173076>

### mod_plotviz

This module take as an argument the plot based on the library and the
reactive values from the app.

## Interface Componnnent

The interface component allows to navigate within the library from home
page - typically each is behind a series of shinydashboard::tabItem

Then each module includes different
[tabsets](https://shiny.posit.co/r/gallery/application-layout/tabsets/)
for each of the pplotting functions presented

### mod_categories

### mod_origin

### mod_destination

### mod_demographics

### mod_processing

### mod_solution

### mod_migrants
