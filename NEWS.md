## unhcrdatapackage 0.1.8

 * Now separating clearly the data source through  [`{ForcedDisplacementStat}`](https://unhcr.github.io/ForcedDisplacementStat/) - make it a lot easier for the set up as it avoids the rjava installed with JAVA_HOME env variable required set up.


## unhcrdatapackage 0.1.7

 * Revised the reference to add the new Operation to Country mapping
 
 * adding a xaringan template -- unhcrdown::html_slides -- with the branding to correctly display humanitarian part of fontawesome
 
 * Fixing some importFrom and global variales with checkhelper::print_globals()


## unhcrdatapackage 0.1.6

 * Added new plots with Humanitarian font (key figures - and disp vs host)
 
 * Added charts to better illustrate forced displacement and migration
 
 * Fixed one remaining type in ppt template with move fro VDA to OIP
 
 * Added geographic reference to map reported locations at subnational scale
 
 * Added intro and conclusion slide to the country ppt to highlight data literacy challenge
 
 * Added automatic fall back to previous year data for Mid-year report does not include some of the key information (demographic pyramid and location info...)
 
 * changed the package to access the WB API from https://github.com/gshs-ornl/wbstats to https://github.com/vincentarelbundock/WDI 



## unhcrdatapackage 0.1.5

 * Update dataset with mid-year 2022 data release (28 Oct 2022)
 
 * Created a dedicated function for update_dataset() - see  https://github.com/Edouard-Legoupil/unhcrdatapackage/blob/master/dev/flat_full.Rmd
 
 * Adjusted new statistical categories - and all related functions - "Host community" = "HCO" - "Other people in need of international protection"="OIP"


## unhcrdatapackage 0.1.4

 * Update dataset with end-year 2021 data release (16 June 2022)
 
 * Small revision to the country to office mapping within the reference

 * Now using the [Fusen package](https://thinkr-open.github.io/fusen/index.html) to mainstream documentation and unit testing - see the dev folder to find out
 
 * All plots changed from vignette to functions
 
 * added Rmd Template to create on the fly Statistical Fact-sheet


## unhcrdatapackage 0.1.3

 * Update dataset with mid-year data release (11 Nov 2021)

 * Re-organised Chart Library

## unhcrdatapackage 0.1.2

 * Update dataset
 
 * corrected and add vignettes - using the unhcRstyle package

## unhcrdatapackage 0.1.1

  *  initial version

