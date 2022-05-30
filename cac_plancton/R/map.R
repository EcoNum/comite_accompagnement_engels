# carte des stations participant time series for the IGMETS.
SciViews::R
library(sf)
library(mapview)

station <- read("2020_cac/data/station_medit.xlsx") %>.%
  mutate(., latitude = as.numeric(latitude), longitude = as.numeric(longitude))

station <- st_as_sf(station, coords = c("longitude", "latitude"), crs = 4326)

mapview(station, zcol = "trait", map.types = "Esri.WorldShadedRelief", layer.name = "Station")
