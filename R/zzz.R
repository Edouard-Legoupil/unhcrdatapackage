### This is done to register the font from the package when it gets loaded!!

.onLoad <- function(libname, pkgname) {
  font_dir <- system.file("fonts", package = "unhcrdatapackage")
  sysfonts::font_paths(font_dir)

  ## For showtext
  sysfonts::font_add(
    family = "Lato",
    regular = "Lato-Regular.ttf",
    bold = "Lato-Bold.ttf",
    italic = "Lato-Italic.ttf",
    bolditalic = "Lato-BoldItalic.ttf"
  )

  sysfonts::font_add(
    family = "Font Awesome 6 Free Solid",
    regular = "fa-solid-900.ttf"
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
  
  if (!any(grepl("wesome", sys_fonts$family, ignore.case = TRUE)))
    systemfonts::register_font(name = "Font Awesome 6 Free Solid",
                               plain = file.path(font_dir, "fa-solid-900.ttf") )

}


.onUnload <- function(libpath) {
  showtext::showtext_auto(FALSE)
}
