dir.create("scripts/")
dir.create("figures/")

jpeg(filename = "figures/plot_20221015.jpeg")
hist(rnorm(15, mean = 5, sd = 2))
dev.off()

## download TLW invert density data
dir.create("data/")
data.url <- "https://ftp.maps.canada.ca/pub//nrcan_rncan/Forests_Foret/TLW/TLW_invertebrateDensity.csv"
data.dest <- "data/NRCAN_TLW_invertdensity.csv"
download.file(url = data.url, destfile = data.dest)
