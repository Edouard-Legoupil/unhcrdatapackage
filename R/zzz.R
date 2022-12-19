.onLoad <- function(libname, pkgname) {
  font_dir <- system.file("fonts", package = "unhcrdatapackage")
  font_dir <- file.path(font_dir, "Lato")
  sysfonts::font_paths(font_dir)

  ## For showtext
  sysfonts::font_add(
    family = "Lato",
    regular = "Lato-Regular.ttf",
    bold = "Lato-Bold.ttf",
    italic = "Lato-Italic.ttf",
    bolditalic = "Lato-BoldItalic.ttf"
  )

  showtext::showtext_auto(TRUE)

  ## For ragg
  sys_fonts <- systemfonts::system_fonts()
  if (!any(grepl("lato", sys_fonts$family, ignore.case = TRUE)))
    systemfonts::register_font(name = "Lato",
                               plain = file.path(font_dir, "Lato-Regular.ttf"),
                               italic = file.path(font_dir, "Lato-Italic.ttf"),
                               bold = file.path(font_dir, "Lato-Bold.ttf"),
                               bolditalic = file.path(font_dir,
                                                      "Lato-BoldItalic.ttf"))

}


.onUnload <- function(libpath) {
  showtext::showtext_auto(FALSE)
}

# # remotes::install_github("thinkr-open/checkhelper")
# # checkhelper::print_globals()
# 
# if(getRversion() >= "2.15.1")
#   utils::globalVariables(c(".",
#                            "..y..",
#                            "CountryAsylumCode",
#                            "CountryAsylumName",
#                            "CountryOriginCode",
#                            "CountryOriginName",
#                            "DisplacedAcrossBorders",
#                            "DisplacedAcrossBordersRound",
#                            "Female04",
#                            "Female1217",
#                            "Female1859",
#                            "Female511",
#                            "Female60ormore",
#                            "FemaleTotal",
#                            "FemaleUnknown",
#                            "Male04",
#                            "Male1217",
#                            "Male1859",
#                            "Male511",
#                            "Male60ormore",
#                            "MaleTotal",
#                            "MaleUnknown",
#                            "OIP_diffperc",
#                            "Population.type",
#                            "Population.type.label",
#                            "Population.type.label.short",
#                            "REF_diffabs",
#                            "Total",
#                            "UNHCRBureau",
#                            "Value",
#                            "Year",
#                            #"aes",
#                            "age",
#                           # "aggregate case_when coord_flip cut_short_scale desc",
#                           "diff_pop_type_value",
#                           "diffabs",
#                           "diffper",
#                           "diffperc",
#                           #"element_blank
#                           # element_line element_text expansion ",
#                           "gender",
#                           #"geom_bar geom_col
#                            #geom_hline geom_label geom_text ggplot head",
#                           "iso_3",
#                           #"labs lag mutate",
#                           "origin_data_prot",
#                           "pc",
#                           "perc",
#                           #"pivot_longer",
#                           "pop_type_value",
#                           #"position_stack
#                           # reorder scale_color_manual scale_colour_manual scale_fill_manual
#                           # scale_x_continuous scale_x_discrete scale_y_continuous select
#                            #stat_summary str_replace sym theme",
#                           "totGen",
#                           #"unit",
#                           "v",
#                           "value",
#                           "ProcedureName",
#                           "value_type"
#                            #where
#                           ))
