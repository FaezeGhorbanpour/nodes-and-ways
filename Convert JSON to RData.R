library(jsonlite)

ways <- fromJSON("~/Desktop/Data/Tehran/tehran_ways.json")
rownames(ways) <- ways$id
ways <- ways[, -1]
nodes <- fromJSON("~/Desktop/Data/Tehran/tehran_nodes.json")
rownames(nodes) <- nodes$id
nodes <- nodes[, -2]
save(nodes, ways, file = "~/Desktop/Tehran 2D Graph/Results/Nodes and Ways.RData")
