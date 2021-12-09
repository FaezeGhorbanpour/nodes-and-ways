library("xlsx")
file = "R/Tehran/sample_sensor_data.xlsx"
new_path <- read.xlsx(file, 1, header=TRUE, colClasses=NA)
lat <- new_path[2]
middle_lat <- 2*floor(nrow(lat)/3)
lng <- new_path[3]
middle_lng <- 2*floor(nrow(lng)/3)
map <- get_map(location = c(lon = lng[middle_lng, "Lng"], lat = lat[middle_lat, "Lat"]), zoom = 15, maptype = "roadmap", source = "google")
p <- ggmap(map)
p <- p + geom_path(data = data.frame(lng,lat),aes(x = lng, y = lat))
p
