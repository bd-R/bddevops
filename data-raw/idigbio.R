## Code to prepare `idigbio_` datasets goes here

library(spocc)
library(usethis)

# idigbio (https://www.idigbio.org/)
# timestamp()

limit_val <- 10000 # The number of records to download


x1 <- occ(from = "idigbio", limit = limit_val, idigbioopts = list(rq = list(
  kingdom = c(
    "Animalia", "Plantae", "Archaea", "Bacteria",
    "Chromista", "Fungi", "Protozoa", "Viruses"
  )
))) # Timestamp: ##------ Thu Jan 02 12:43:46 2020 ------##

# Data with 1 record
idigbio_1r <- x1$idigbio$data$custom_query[1, ]
usethis::use_data(idigbio_1r) # 558KB

# Data with 1,000 records
idigbio_1k <- x1$idigbio$data$custom_query[1:1000, ]
usethis::use_data(idigbio_1k) # 793KB

# Data with 10,000 records
idigbio_10k <- x1$idigbio$data$custom_query[1:10000, ]
usethis::use_data(idigbio_10k) # 2.4MB


# Latest parsed records (during the past 195 days) # Timestamp: ##------ Thu Jan 02 12:53:58 2020 ------##
occ(from = "idigbio", limit = 1, date = (c((Sys.Date() - 195), Sys.Date())))$idigbio$meta$found
idigbio_10k_latest <- occ(from = "idigbio", limit = limit_val, date = (c((Sys.Date() - 195), Sys.Date())))$idigbio$data$custom_query
usethis::use_data(idigbio_10k_latest) # 1.3MB
