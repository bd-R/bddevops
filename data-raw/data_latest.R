# Retriving the latest records

# GBIF
# Latest parsed records (during the past 7 days) # Timestamp: ##-- Tue Dec 17 18:55:27 2019 --##
occ(from = "gbif", limit = 1, date = (c((Sys.Date() - 7), Sys.Date())))$gbif$meta$found
gbif_10k_latest <- occ(from = "gbif", limit = limit_val, date = (c((Sys.Date() - 7), Sys.Date())))$gbif$data$custom_query
usethis::use_data(gbif_10k_latest) # 1.2MB


# IDigBio
# Latest parsed records (during the past 195 days) # Timestamp: ##------ Thu Jan 02 12:53:58 2020 ------##
occ(from = "idigbio", limit = 1, date = (c((Sys.Date() - 195), Sys.Date())))$idigbio$meta$found
idigbio_10k_latest <- occ(from = "idigbio", limit = limit_val, date = (c((Sys.Date() - 195), Sys.Date())))$idigbio$data$custom_query
usethis::use_data(idigbio_10k_latest) # 1.3MB
