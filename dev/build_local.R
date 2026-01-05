# Build script for unhcrviz

# Inflate flat files
message("Inflating dev_plot_Country.Rmd...")
fusen::inflate(flat_file = "dev/dev_plot_Country.Rmd", vignette_name = "chart-library-country", check = FALSE, document = TRUE, overwrite = "yes")

message("Inflating dev_plot_Region.Rmd...")
fusen::inflate(flat_file = "dev/dev_plot_Region.Rmd", vignette_name = "chart-library-region", check = FALSE, document = TRUE, overwrite = "yes")

message("Inflating dev_template.Rmd...")
fusen::inflate(flat_file = "dev/dev_template.Rmd", vignette_name = "Report Template", check = FALSE, document = TRUE, overwrite = "yes")

message("Inflating dev_golem_module.Rmd...")
fusen::inflate(flat_file = "dev/dev_golem_module.Rmd", check = FALSE, document = TRUE, overwrite = "yes")


# Document
message("Documenting package...")
devtools::document()

# Install
message("Installing package...")
devtools::install(upgrade = "never")

message("Build and install complete!")
