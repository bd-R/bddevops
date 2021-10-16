# Heterogeneous data | 30 records

limit_value <- 10000 # The number of records to download



# GBIF
gbif_data <-  spocc::occ(from = "gbif",
                         limit = limit_value)
gbif_10k <- gbif_data$gbif$data$custom_query
usethis::use_data(gbif_10k)



# IDigBio
idigbio_data <-  spocc::occ(from = "idigbio",
                            limit = limit_value,
                            idigbioopts = list(rq = list(
                              kingdom = c("Animalia","Plantae","Archaea", "Bacteria",
                                          "Chromista", "Fungi", "Protozoa", "Viruses"))))
idigbio_10k <- idigbio_data$idigbio$data$custom_query
usethis::use_data(idigbio_10k)



# INaturalist
inat_data <-  spocc::occ(from = "inat",
                         limit = limit_value)
inat_10k <- inat_data$inat$data$custom_query
usethis::use_data(inat_10k)



# VertNet
vertnet_data  <-  spocc::occ(from = "vertnet",
                             limit = limit_value,
                             vertnetopts = list(class = "aves"))
vertnet_10k  <- vertnet_data$vertnet$data$custom_query
usethis::use_data(vertnet_10k)



# OBIS
obis_data  <-  spocc::occ(from = "obis",
                          limit = limit_value,
                          date = c('1950-01-01', '2021-01-01'))
obis_10k  <- obis_data$obis$data$custom_query
usethis::use_data(obis_10k)



# ALA
ala_data <- spocc::occ(from = "ala",
                       limit = limit_value,
                       date = c('1950-01-01T00:00:00Z', '2021-01-01T00:00:00Z'))
ala_10k <- ala_data$ala$data$custom_query
usethis::use_data(ala_10k)
