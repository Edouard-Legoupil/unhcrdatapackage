# theme_UNHCR <- fresh::create_theme(
#   fresh::adminlte_color(
#   #   light_blue = "#0072BC",
#   #   blue = "#0072BC"
#   ),
#   fresh::adminlte_sidebar(
#     # width = "300px",
#     # dark_bg = "#0063a3",
#     # dark_hover_bg = "#81A1C1",
#     # dark_color = "#2E3440"
#   ),
#   fresh::adminlte_global(
#     # content_bg = "#DCE9FF",
#     # box_bg = "#FFF",
#     # info_box_bg = "#D8DEE9"
#   )
# )


#' Theme_shinydashboard_UNHCR
#'
#' Theme for a shinydashboard application.
#' See also https://rstudio.github.io/shinydashboard/appearance.html
#'
#' @return CSS code cutomised with UNHCR Brand
#'
#' @importFrom htmltools tags HTML
#' @keywords internal
#'
#' @noRd
#' 
#' @examples
#' #Typically used within the app_ui of the shiny
#' # app_ui <- function() { 
#' #   tagList(
#' #     # Leave this function for adding external resources
#' #     golem_add_external_resources(),
#' #     ## Function to style the app
#' #     theme_shinydashboard_unhcr())}
#' 
#' 

theme_shinydashboard_unhcr <- function() {
  
  primary <- "#0072BC"
  accent <- "#FAEB00"
  secondary <- "#FAEB00"
  
  
  
  #general
  appFontFamily = "Nunito Sans"
  appFontColor = "#000"
  primaryFontColor = "#000"
  infoFontColor = "#000"
  successFontColor = "#000"
  warningFontColor = "#000"
  dangerFontColor = "#000"
  bodyBackColor = "#f5f5f5"
  
  #header
  logoBackColor = primary
  headerButtonBackColor = primary
  headerButtonIconColor = "white"
  headerButtonBackColorHover = primary
  headerButtonIconColorHover = "#66AAD7"
  headerBackColor = primary
  headerBoxShadowColor = "#aaaaaa"
  headerBoxShadowSize = "0px 0px 0px"
  
  
  #sidebar
 # sidebarBackColor = "#343a40"
  sidebarBackColor = "#EDEDED"
  
  sidebarPadding = 0
  sidebarMenuBackColor = "transparent"
  sidebarMenuPadding = 0
  sidebarMenuBorderRadius = 0
  sidebarShadowRadius = "0px 0px 0px"
  sidebarShadowColor = "#aaaaaa"
  sidebarUserTextColor = "#696969"
  sidebarSearchBackColor = primary
  sidebarSearchIconColor = "#fff"
  sidebarSearchBorderColor = primary
  
  sidebarTabTextColor = "#696969"
  #sidebarTabTextColor = "#FFF"
  sidebarTabTextSize = 16
  sidebarTabBorderStyle = "none none none solid"
  sidebarTabBorderColor = "transparent"
  sidebarTabBorderWidth = 0
  
  sidebarTabBackColorSelected = primary
  sidebarTabTextColorSelected = "#FFF"
  sidebarTabRadiusSelected = "0px 0px 0px 0px"
  sidebarTabBackColorHover = "transparent"
  
  sidebarTabTextColorHover = "black"
 # sidebarTabTextColorHover = "#e2e2e2"
  sidebarTabBorderStyleHover = "none none none solid"
  sidebarTabBorderColorHover = "#FAEB00"
  sidebarTabBorderWidthHover = 5
  sidebarTabRadiusHover = "0px 0px 0px 0px"
  
  ### boxes
  boxBackColor = "white"
  boxBorderRadius = 0
  boxShadowSize = "0px 0px 0px"
  boxShadowColor = paste0(primary, "30")
  boxTitleSize = 24
  boxDefaultColor = "#FFF"
  boxPrimaryColor = "#FFF"
  
  #boxInfoColor = "#FFF"
 # boxInfoColor = "#0072BC"
  boxInfoColor ="#EDEDED"
  boxSuccessColor = "#FFF"
  boxWarningColor = "#FFF"
  boxDangerColor = "#FFF"
  
  tabBoxTabColor = "white"
  tabBoxTabTextSize = 12
  tabBoxTabTextColor = "#696969"
  tabBoxTabTextColorSelected = primary
  tabBoxBackColor = "#FFF"
  tabBoxHighlightColor = primary
  tabBoxBorderRadius = 0
  
  ### inputs
  
  ## Button
  buttonHeight = "auto"
  buttonPadding = "6px 12px"
  buttonBackColor = "rgb(245,245,245)"
  buttonTextColor = "rgb(0,0,0)"
  buttonBorderColor = "rgb(200,200,200)"
  buttonBorderRadius = 0
  buttonBackColorHover = "rgb(235,235,235)"
  buttonTextColorHover = "rgb(100,100,100)"
  buttonBorderColorHover = "rgb(200,200,200)"
  
  ##Text
  textboxBackColor = "rgb(255,255,255)"
  textboxBorderColor = "rgb(200,200,200)"
  textboxBorderRadius = 0
  textboxBackColorSelect = "rgb(245,245,245)"
  textboxBorderColorSelect = "rgb(200,200,200)"
  textboxHeight = "auto"
  textboxPadding = "6px 12px"
  
  
  ### tables
  tableBackColor = NA
  tableBorderColor = NA
  tableBorderTopSize = 1
  tableBorderRowSize = 1
  
  
  cssCode <- paste0(
    '
    /* font */
    body, label, input, button, select, box,
    .h1, .h2, .h3, .h4, .h5, h1, h2, h3, h4, h5 {
      font-family: "', appFontFamily, '";
      color: ', appFontColor, ';
    }

    /* font: fix for h6 */
    /* messes up sidebar user section if included above */
    .h6, h6 {
      font-family: "', appFontFamily, '";
    }

    /* sidebar: logo */
    .skin-blue .main-header .logo {
      background: ', logoBackColor, ';
    }

    /* sidebar: logo hover */
    .skin-blue .main-header .logo:hover {
      background: ', logoBackColor, ';
    }

    /* sidebar: collapse button  */
    .skin-blue .main-header .navbar .sidebar-toggle {
      background: ', headerButtonBackColor, ';
      color:', headerButtonIconColor, ';
    }

    /* sidebar: collapse button hover */
    .skin-blue .main-header .navbar .sidebar-toggle:hover {
      background: ', headerButtonBackColorHover, ';
      color:', headerButtonIconColorHover, ';
    }

    /* header */
    .skin-blue .main-header .navbar {
      background: ', headerBackColor, ';
      box-shadow: ', headerBoxShadowSize, ' ', headerBoxShadowColor, ';
    }

    /* sidebar*/
    .skin-blue .main-sidebar {
      background: ', sidebarBackColor, ';
      box-shadow: ', sidebarShadowRadius, " ", sidebarShadowColor, ';
      padding-left: ', sidebarPadding, 'px;
      padding-right: ', sidebarPadding, 'px;
      /* padding-top: 60px; */
    }

    /* sidebar menu */
    .main-sidebar .user-panel, .sidebar-menu, .sidebar-menu>li.header {
      white-space: nowrap;
      background: ', sidebarMenuBackColor, ';
      padding: ', sidebarMenuPadding, 'px;
      border-radius: ', sidebarMenuBorderRadius, 'px;
    }

    /* fix for user panel */
    .user-panel>.info>p, .skin-blue .user-panel>.info {
      color: ', sidebarUserTextColor, ';
      font-size: 12px;
      font-weight: normal;
    }
    section.sidebar .user-panel {
      padding: 10px;
    }

    /* sidebar: tabs */
    .skin-blue .main-sidebar .sidebar .sidebar-menu a {
      color: ', sidebarTabTextColor, ';
      font-size: ', sidebarTabTextSize, 'px;
      border-style: ', sidebarTabBorderStyle, ';
      border-color: ', sidebarTabBorderColor, ';
      border-width: ', sidebarTabBorderWidth, 'px;
    }

    /* sidebar: tab selected */
    .skin-blue .main-sidebar .sidebar .sidebar-menu .active > a {
      color: ', sidebarTabTextColorSelected, ';
      font-size: ', sidebarTabTextSize, 'px;
      border-radius: ', sidebarTabRadiusSelected, ';
      border-style: ', sidebarTabBorderStyleHover, ';
      border-color: ', sidebarTabBorderColorHover, ';
      border-width: ', sidebarTabBorderWidthHover, 'px;
    }
    .skin-blue .sidebar-menu > li:hover > a,
    .skin-blue .sidebar-menu > li.active > a {
      color: ', sidebarTabTextColorSelected, ';
      background: ', sidebarTabBackColorSelected, ';
      border-radius: ', sidebarTabRadiusHover, ';
    }

    /* sidebar: tab hovered */
    .skin-blue .main-sidebar .sidebar .sidebar-menu a:hover {
      background: ', sidebarTabBackColorHover, ';
      color: ', sidebarTabTextColorHover, ';
      font-size: ', sidebarTabTextSize, 'px;
      border-style: ', sidebarTabBorderStyleHover, ';
      border-color: ', sidebarTabBorderColorHover, ';
      border-width: ', sidebarTabBorderWidthHover, 'px;
      border-radius: ', sidebarTabRadiusHover, ';
    }

    /* sidebar: subtab */
    .skin-blue .sidebar-menu > li > .treeview-menu {
      margin: 0px;
      background: ', sidebarMenuBackColor, ';
    }
    .skin-blue .treeview-menu > li > a {
      background: ', sidebarMenuBackColor, ';
    }
    /* sidebar: subtab selected */
    .skin-blue .treeview-menu > li.active > a,
    .skin-blue .treeview-menu > li > a:hover {
      background: ', sidebarTabBackColorSelected, ';
    }

    /* sidebar: search text area */
    .skin-blue .sidebar-form input[type=text] {
      background: ', sidebarSearchBackColor, ';
      color: ', appFontColor, ';
      border-radius: ', textboxBorderRadius, 'px 0px 0px ', textboxBorderRadius, 'px;
      border-color: ', sidebarSearchBorderColor, ';
      border-style: solid none solid solid;
    }

    /* sidebar: search button */
    .skin-blue .input-group-btn > .btn {
      background: ', sidebarSearchBackColor, ';
      color: ', sidebarSearchIconColor, ';
      border-radius: 0px ', textboxBorderRadius, 'px ', textboxBorderRadius, 'px 0px;
      border-style: solid solid solid none;
      border-color: ', sidebarSearchBorderColor, ';
    }

    /* sidebar form */
    .skin-blue .sidebar-form {
      border-radius: 0px;
      border: 0px none rgb(255,255,255);
      margin: 10px;
    }

    /* body */
    .content-wrapper, .right-side {
      background: ', bodyBackColor, ';
    }

    /* box
    .box {
      background: ', boxBackColor, ';
      border-radius: ', boxBorderRadius, 'px;
      box-shadow: ', boxShadowSize, ' ', boxShadowColor, ';
    }

    /* box: title */
    .box-header .box-title {
      font-size: ', boxTitleSize, 'px;
    }

    /* tabbox: title */
    .nav-tabs-custom>.nav-tabs>li.header {
      color: ', appFontColor, ';
      font-size: ', boxTitleSize, 'px;
    }

    /* tabbox: tab color */
    .nav-tabs-custom, .nav-tabs-custom .nav-tabs li.active:hover a,
    .nav-tabs-custom .nav-tabs li.active a {
      background: ', tabBoxTabColor, ';
      color: ', appFontColor, ';
      border-radius: ', boxBorderRadius, 'px;
    }

    .nav-tabs-custom {
      box-shadow: ', boxShadowSize, ' ', boxShadowColor, ';
    }

    /* tabbox: active tab bg */
    .nav-tabs-custom>.nav-tabs>li.active {
      border-radius: ', tabBoxBorderRadius, 'px;
      border-top-color: ', tabBoxHighlightColor, ';
      # box-shadow: ', boxShadowSize, ' ', boxShadowColor, ';
    }

    /* tabbox: font color */
    .nav-tabs-custom>.nav-tabs>li.active:hover>a, .nav-tabs-custom>.nav-tabs>li.active>a {
      border-bottom-color: ', tabBoxTabColor, ';
      border-top-color: ', tabBoxHighlightColor, ';
      border-right-color: ', tabBoxHighlightColor, ';
      border-left-color: ', tabBoxHighlightColor, ';
      color: ', tabBoxTabTextColorSelected, ';
      font-size: ', tabBoxTabTextSize, 'px;
      border-radius: ', tabBoxBorderRadius, 'px;
    }

    /* tabbox: inactive tabs background */
    .nav-tabs-custom>.nav-tabs>li>a {
      color: ', tabBoxTabTextColor, ';
      font-size: ', tabBoxTabTextSize, 'px;
    }

    /* tabbox: top area back color */
    .nav-tabs-custom, .nav-tabs-custom>.tab-content, .nav-tabs-custom>.nav-tabs {
      border-bottom-color: ', tabBoxHighlightColor, ';
      background: ', tabBoxBackColor, ';
    }

    /* tabbox: top area rounded corners */
    .nav-tabs-custom>.nav-tabs {
      margin: 0;
      border-radius: ', tabBoxBorderRadius, 'px;
    }

    /* infobox */
    .info-box {
      background: ', boxBackColor, ';
      border-radius: ', boxBorderRadius, 'px;
      box-shadow: ', boxShadowSize, ' ', boxShadowColor, ';
    }

    /* valuebox */
    .small-box {
      border-radius: ', boxBorderRadius, 'px;
      box-shadow: ', boxShadowSize, ' ', boxShadowColor, ';
    }

    /* valuebox: main font color */
    .small-box h3, .small-box p {
      color: rgb(255,255,255)
    }

    /* box: default color */
    .box.box-solid>.box-header, .box>.box-header {
      color: ', appFontColor, ';
    }
    .box.box-solid>.box-header {
      border-radius: ', boxBorderRadius, 'px;
    }
    .box.box-solid, .box {
      border-radius: ', boxBorderRadius, 'px;
      border-top-color: ', boxDefaultColor, ';
    }

    /* box: info color */
    .box.box-solid.box-info>.box-header h3, .box.box-info>.box-header h3 {
      color: ', infoFontColor, ';
    }
    .box.box-solid.box-info>.box-header {
      background: ', boxInfoColor, ';
      border-radius: ', boxBorderRadius, 'px;
    }
    .box.box-solid.box-info, .box.box-info {
      border-color: ', boxInfoColor, ';
      border-left-color: ', boxInfoColor, ';
      border-right-color: ', boxInfoColor, ';
      border-top-color: ', boxInfoColor, ';
      border-radius: ', boxBorderRadius, 'px;
    }

    /* box: primary color */
    .box.box-solid.box-primary>.box-header h3, .box.box-primary>.box-header h3 {
      color: ', primaryFontColor, ';
    }
    .box.box-solid.box-primary>.box-header {
      background: ', boxPrimaryColor, ';
      border-radius: ', boxBorderRadius, 'px;
    }
    .box.box-solid.box-primary, .box.box-primary {
      border-color: ', boxPrimaryColor, ';
      border-left-color: ', boxPrimaryColor, ';
      border-right-color: ', boxPrimaryColor, ';
      border-top-color: ', boxPrimaryColor, ';
      border-radius: ', boxBorderRadius, 'px;
    }

    /* box: success color */
    .box.box-solid.box-success>.box-header h3, .box.box-success>.box-header h3 {
      color: ', successFontColor, ';
    }
    .box.box-solid.box-success>.box-header {
      background: ', boxSuccessColor, ';
      border-radius: ', boxBorderRadius, 'px;
    }
    .box.box-solid.box-success, .box.box-success {
      border-color: ', boxSuccessColor, ';
      border-left-color: ', boxSuccessColor, ';
      border-right-color: ', boxSuccessColor, ';
      border-top-color: ', boxSuccessColor, ';
      border-radius: ', boxBorderRadius, 'px;
    }

    /* box: warning color */
    .box.box-solid.box-warning>.box-header h3, .box.box-warning>.box-header h3 {
      color: ', warningFontColor, ';
    }
    .box.box-solid.box-warning>.box-header {
      background: ', boxWarningColor, ';
      border-radius: ', boxBorderRadius, 'px;
    }
    .box.box-solid.box-warning, .box.box-warning {
      border-color: ', boxWarningColor, ';
      border-left-color: ', boxWarningColor, ';
      border-right-color: ', boxWarningColor, ';
      border-top-color: ', boxWarningColor, ';
      border-radius: ', boxBorderRadius, 'px;
    }

    /* box: danger color */
    .box.box-solid.box-danger>.box-header h3, .box.box-danger>.box-header h3 {
      color: ', dangerFontColor, ';
    }
    .box.box-solid.box-danger>.box-header {
      background: ', boxDangerColor, ';
      border-radius: ', boxBorderRadius, 'px;
    }
    .box.box-solid.box-danger, .box.box-danger {
      border-color: ', boxDangerColor, ';
      border-left-color: ', boxDangerColor, ';
      border-right-color: ', boxDangerColor, ';
      border-top-color: ', boxDangerColor, ';
      border-radius: ', boxBorderRadius, 'px;
    }

    /* button */
    .btn-default {
      background: ', buttonBackColor, ';
      color: ', buttonTextColor, ';
      border-color: ', buttonBorderColor, ';
      border-radius: ', buttonBorderRadius, 'px;
      height: ', buttonHeight, 'px;
      padding: ', buttonPadding, ';
    }

    /* button: hover */
    .btn-default:hover {
      background: ', buttonBackColorHover, ';
      color: ', buttonTextColorHover, ';
      border-color: ', buttonBorderColorHover, ';
    }

    /* button: focus */
    .btn-default:focus, .action-button:focus {
      background: ', buttonBackColor, ';
      color: ', buttonTextColor, ';
      border-color: ', buttonBorderColor, ';
    }

    /* button: active */
    .btn-default:active, .action-button:active {
      background: ', buttonBackColor, ';
      color: ', buttonTextColor, ';
      border-color: ', buttonBorderColor, ';
    }

    /* button: visited */
    .btn-default:visited {
      background: ', buttonBackColor, ';
      color: ', buttonTextColor, ';
      border-color: ', buttonBorderColor, ';
    }

    /* textbox */
    .form-control, .selectize-input, .selectize-control.single .selectize-input {
      background: ', textboxBackColor, ';
      color: ', appFontColor, ';
      border-color: ', textboxBorderColor, ';
      border-radius: ', textboxBorderRadius, 'px;
      height: ', textboxHeight, 'px;
      min-height: ', textboxHeight, 'px;
      padding: ', textboxPadding, ';
    }

    /* textbox: selected */
    .form-control:focus, .selectize-input.focus {
      color: ', appFontColor, ';
      background: ', textboxBackColorSelect, ';
      border-color: ', textboxBorderColorSelect, ';
      -webkit-box-shadow: inset 0px 0px 0px, 0px 0px 0px;
      box-shadow: inset 0px 0px 0px, 0px 0px 0px;
    }

    /* multi-row selectize input */
    .selectize-control.multi .selectize-input.has-items {
      height: auto;
    }

    /* verbatim text output */
    .qt pre, .qt code {
      font-family: ', appFontFamily, ' !important;
    }
    pre {
      color: ', appFontColor, ';
      background-color: ', textboxBackColor, ';
      border: 1px solid ', textboxBorderColor, ';
      border-radius: ', textboxBorderRadius, 'px;
    }

    /* drop-down menu */
    .selectize-dropdown, .selectize-dropdown.form-control {
      background: ', textboxBackColor, ';
      border-radius: 4px;
    }

    /* table */
    .table {
      background: ', tableBackColor, ';
      border-radius: ', textboxBorderRadius, 'px;
    }

    /* table: row border color*/
    .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td,
    .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
      border-top: ', tableBorderRowSize, 'px solid ', tableBorderColor, ';
    }

    /* table: top border color*/
    .table>thead>tr>th {
      border-bottom: ', tableBorderTopSize, 'px solid ', tableBorderColor, ';
    }

    /* table: hover row */
    .table-hover>tbody>tr:hover {
    background-color: ', tableBorderColor, ';
    }

    /* table: stripe row */
    .table-striped>tbody>tr:nth-of-type(odd) {
      background-color: ', tableBorderColor, ';
    }

    /* table: body colour */
    table.dataTable tbody tr {
      background-color: ', tableBackColor, ' !important;
    }

    /* table: text and footer border colour */
    table.dataTable {
      color: ', appFontColor, ' !important;
      border: 0px !important;
    }

    /* datatable: selected row */
    table.dataTable tr.selected td, table.dataTable td.selected {
      background-color: ', boxSuccessColor, ' !important;
      color: rgb(0,0,0) !important;
    }

    /* datatable: hover row */
    table.dataTable tr.hover td, table.dataTable td.hover {
      background-color: ', tableBorderColor, ' !important;
    }
    table.dataTable.hover tbody tr:hover, table.dataTable.display tbody tr:hover {
      background-color: ', tableBorderColor, ' !important;
    }
    table.dataTable.row-border tbody th, table.dataTable.row-border tbody td,
    table.dataTable.display tbody th, table.dataTable.display tbody td {
      border-top: 1px solid ', tableBorderColor, ' !important;
    }

    /* datatable: stripe row */
    table.dataTable.stripe tbody tr.odd, table.dataTable.display tbody tr.odd {
      background-color: ', tableBorderColor, ' !important;
    }

    /* datatable: page control */
    .dataTables_wrapper .dataTables_paginate .paginate_button {
      color: ', appFontColor, ' !important;
    }

    /* datatable: table info */
    .dataTables_wrapper .dataTables_paginate .paginate_button.disabled,
    .dataTables_wrapper .dataTables_paginate .paginate_button.disabled:hover,
    .dataTables_wrapper .dataTables_paginate .paginate_button.disabled:active {
      color: ', appFontColor, ' !important;
    }
    .dataTables_wrapper .dataTables_length, .dataTables_wrapper .dataTables_filter,
    .dataTables_wrapper .dataTables_info, .dataTables_wrapper .dataTables_processing,
    .dataTables_wrapper .dataTables_paginate {
      color: ', appFontColor, ' !important;
    }
    .dataTables_wrapper .dataTables_length, .dataTables_wrapper .dataTables_filter,
    .dataTables_wrapper .dataTables_info, .dataTables_wrapper .dataTables_processing,
    .dataTables_wrapper .dataTables_paginate {
      color: ', appFontColor, ' !important;
    }

    /* datatable search box */
    .dataTables_wrapper .dataTables_filter input {
      background-color: ', textboxBackColor, ';
      border: 1px solid ', textboxBorderColor, ';
      border-radius: ', textboxBorderRadius, 'px;
    }

    /* notification and progress bar */
    .progress-bar {
      background-color: ', boxSuccessColor, ';
    }
    .shiny-notification {
      height: 80px;
      font-family: ', appFontFamily, ';
      font-size: 15px;
      border-radius: 10px;
      margin-left: -450px !important;
    }

    /* horizontal divider line */
    hr {
      border-top: 1px solid rgb(215,215,215);
    }

    /* modal */
    .modal-body {
      background-color: ', boxBackColor, ';
    }

    .modal-footer {
      background-color: ', boxBackColor, ';
    }

    .modal-header {
      background-color: ', boxBackColor, ';
    }

    '
  )
  
  # removing new line symbols and formatting spacing
  cssCode <- gsub(pattern = "\n", replacement = "", x = cssCode)
  cssCode <- gsub(pattern = "[[:space:]]{2,3}", replacement = "", x = cssCode)
  
  htmlCode <- htmltools::tags$head(
    htmltools::tags$style(
      htmltools::HTML(
        text = cssCode
      )
    )
  )
  
  return(htmlCode)
}
