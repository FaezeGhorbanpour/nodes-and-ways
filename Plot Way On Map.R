library(ggplot2)
library(ggmap)
map <- get_map(location = c(lon = 51.3890, lat = 35.6892), zoom = 11, maptype = "roadmap", source = "google")
p <- ggmap(map)
path <- ways$nd[1][[1]]

q = nodes[as.character(path), "lon"]
p <- p + geom_path(data = data.frame(lng = nodes[as.character(path), "lon"],
                                lat = nodes[as.character(path), "lat"]),
              aes(x = lng, y = lat))
p

