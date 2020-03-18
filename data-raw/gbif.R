## Code to prepare `gbif_` datasets goes here

library(spocc)
library(usethis)

# GBIF (https://www.gbif.org/)
# timestamp()

limit_val <- 10000 # The number of records to download

x1 <- occ(from = "gbif", limit = limit_val) # Timestamp: ##-- Tue Dec 17 18:50:52 2019 --##

# Data with 1 record
gbif_1r <- x1$gbif$data$custom_query[1, ]
usethis::use_data(gbif_1r) # 1.8KB

# Data with 1,000 records
gbif_1k <- x1$gbif$data$custom_query[1:1000, ]
usethis::use_data(gbif_1k) # 69.8KB

# Data with 10,000 records
gbif_10k <- x1$gbif$data$custom_query[1:10000, ]
usethis::use_data(gbif_10k) # 529KB

# timestamp()
# Latest parsed records (during the past 7 days) # Timestamp: ##-- Tue Dec 17 18:55:27 2019 --##
occ(from = "gbif", limit = 1, date = (c((Sys.Date() - 7), Sys.Date())))$gbif$meta$found
gbif_10k_latest <- occ(from = "gbif", limit = limit_val, date = (c((Sys.Date() - 7), Sys.Date())))$gbif$data$custom_query
usethis::use_data(gbif_10k_latest) # 1.2MB
