# Package building function
#
# This function pulls data from HDX and then tidy them a bit to be ready for R

# Check that the usethis package is also installed. If not:
#install.packages("usethis")
#devtools::document()

#install.packages("pkgdown")

#library("pkgdown")
pkgdown::build_site()


## a few other exploration of the package
#devtools::release()
# devtools::build_win(version = c("R-release", "R-devel"))

## Last #######

# attachment::att_to_description()
# rhub::check_for_cran()
# rhub::check()
