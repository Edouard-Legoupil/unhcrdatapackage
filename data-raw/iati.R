## A script to pull and tidy IATI data for UNHCR - https://reporting.unhcr.org/iati

# https://reporting.unhcr.org/sites/default/files/IATI/UNHCR-Activities-2020.xml


library(tidyverse)

fs::dir_create("data-raw/iati-data")

# data <- 
#   xml2::read_xml("data-raw/UNHCR-Activities-2021.xml") |> 
#   as_list() |> 
#   as_tibble() |> 
#   mutate(id = row_number()) |> 
#   unnest_longer(`iati-activities`) |> 
#   nest(data = -`iati-activities_id`)
# 
# walk2(data$data, data$`iati-activities_id`,
#       ~unnest_wider(.x, `iati-activities`) |> 
#         unnest(-id) |> 
#         unnest(-id) |> 
#         unnest(-id) |> 
#         unnest(-id) |> 
#         unnest(-id) |> 
#         write_csv(fs::path("iati-data", .y, ext = "csv")))

library(xml2)


data2020 <- 
  xml2::read_xml("https://reporting.unhcr.org/sites/default/files/IATI/UNHCR-Activities-2020.xml") %>% 
  xml2::as_list() %>% 
  as_tibble() %>% 
  mutate(id = row_number()) %>% 
  unnest_longer(`iati-activities`) %>% 
  nest(data = -`iati-activities_id`)



data <- 
  xml2::read_xml("data-raw/UNHCR-Activities-2021.xml") %>% 
  xml2::as_list() %>% 
  as_tibble() %>% 
  mutate(id = row_number()) %>% 
  unnest_longer(`iati-activities`) %>% 
  nest(data = -`iati-activities_id`)

walk2(data$data, data$`iati-activities_id`,
      ~unnest_wider(.x, `iati-activities`) %>% 
        unnest(-id) %>% 
        unnest(-id) %>% 
        unnest(-id) %>% 
        unnest(-id) %>% 
        unnest(-id) %>% 
        write_csv(fs::path("data-raw/iati-data", .y, ext = "csv")))


