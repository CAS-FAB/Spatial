
library(dplyr)
library(readr)
library(terra)
library(purrr)
links <- read_csv("_data/original/swissimage_2m_landquart/swissimage_2m_urls.csv", col_names = c("URL"))

links %>%
  mutate(
    filename = basename(URL)
  ) %>%
  pmap(function(URL, filename){
    download.file(URL, file.path("_data/original/swissimage_2m_landquart/", filename))
  })

swissimage_paths <- list.files("_data/original/swissimage_2m_landquart","\\.tif$",full.names = TRUE)

swissimage_list <- purrr::map(swissimage_paths, ~rast(.x))

swiss_mosaic <- do.call(mosaic, swissimage_list)

writeRaster(swiss_mosaic, "_data/processed/swissimage_2m_landquart.tif", overwrite = TRUE)


