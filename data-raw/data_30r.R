# Heterogeneous data | 30 records

limit_value <- 30 # The number of records to download



# GBIF
gbif_data <-  spocc::occ(from = "gbif",
                         limit = limit_value)
gbif_30r <- gbif_data$gbif$data$custom_query
usethis::use_data(gbif_30r)



# IDigBio
idigbio_data <-  spocc::occ(from = "idigbio",
                            limit = limit_value,
                            idigbioopts = list(rq = list(
                            kingdom = c("Animalia","Plantae","Archaea", "Bacteria",
                                        "Chromista", "Fungi", "Protozoa", "Viruses"))))
idigbio_30r <- idigbio_data$idigbio$data$custom_query
usethis::use_data(idigbio_30r)



# INaturalist
inat_data <-  spocc::occ(from = "inat",
                        limit = limit_value)
inat_30r <- inat_data$inat$data$custom_query
usethis::use_data(inat_30r)



# VertNet
vertnet_data  <-  spocc::occ(from = "vertnet",
                            limit = limit_value,
                            date = c('1950-01-01', '2021-01-01'),
                            vertnetopts = list(phylum = "Chordata"))
vertnet_30r  <- vertnet_data$vertnet$data$custom_query
usethis::use_data(vertnet_30r)



# OBIS
obis_data  <-  spocc::occ(from = "obis",
                             limit = limit_value,
                             date = c('1950-01-01', '2021-01-01'))
obis_30r  <- obis_data$obis$data$custom_query
usethis::use_data(obis_30r)



# ALA
ala_data <- spocc::occ(from = "ala",
                      limit = limit_value,
                      date = c('1950-01-01T00:00:00Z', '2021-01-01T00:00:00Z'))
ala_30r <- ala_data$ala$data$custom_query
usethis::use_data(ala_30r)
