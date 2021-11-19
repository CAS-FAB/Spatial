


library(sf)
library(tidyverse)
library(terra)

my_geopackage <- "_data/geopackage4.gpkg"

relief <- terra::rast("_data/original/2mio_relief_color.tif")

db <- "PG:host=localhost dbname=swisstopo user=viewer password=viewer"

hoheit <- st_read(db,"swissboundaries3d.tlm_hoheitsgebiet")


schweiz <- st_read(db,"swissboundaries3d.tlm_landesgebiet")

seen <- st_read(db,query = "SELECT name, ST_Area(shape) area, shape From swisstlm3d.tlm_stehendes_gewaesser ORDER BY shape_length DESC LIMIT 10;")


relief2 <- terra::mask(relief, as(st_transform(schweiz,21781), "SpatVector"))


layers <- st_layers(my_geopackage)$name

layers <- set_names(layers, layers)

datasets <- map(layers, ~read_sf(my_geopackage, .x))

datasets <- map(datasets, ~st_transform(.x, 2056))

p <- ggplot(datasets[["bbox"]]) +
  geom_sf(fill = NA, color = NA)+
  theme_classic() +
  theme(axis.text.x = element_text(angle = 90, vjust = .5))
p

datasets[["roads"]]$npts <- mapview::npts(datasets[["roads"]],by_feature = TRUE)

datasets[["roads"]] %>%
  arrange(npts) %>%
  filter(npts == 4) %>%
  select(name) %>%
  filter(!is.na(name)) %>%
  head(1)

p +
  geom_sf(data = datasets[["roads"]]) +
  coord_sf(datum = 2056)

ggsave("images/roads.jpg")


datasets[["forest"]]$npts <- mapview::npts(datasets[["forest"]],by_feature = TRUE)

datasets[["forest"]] %>%
  arrange(npts) %>%
  transmute(name = "Hafnerwald")%>%
  head(1)

p +
  geom_sf(data = datasets[["forest"]]) +
  coord_sf(datum = 2056)

ggsave("images/forest.jpg")


p +
  geom_sf(data = datasets[["hotels"]]) +
  ggrepel::geom_label_repel(data = head(datasets[["hotels"]],5), aes(label = name, geometry = geom), stat = "sf_coordinates", min.segment.length = 0) +
  coord_sf(datum = 2056)

ggsave("images/hotels.jpg")



datasets[["hotels"]] %>%
  select(name)
