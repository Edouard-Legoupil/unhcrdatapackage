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


## Trying to clean all packages...
ip <- installed.packages()

pkgs.to.remove <- ip[!(ip[,"Priority"] %in% c("base", "recommended")), 1]

sapply(pkgs.to.remove, remove.packages)
