% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_gbif.R
\docType{data}
\name{gbif_30r}
\alias{gbif_30r}
\title{GBIF data| Heterogeneous | 30 record}
\format{
A data frame with 30 rows and 102 variables:
\describe{
  \item{\code{name}}{character COLUMN_DESCRIPTION}
  \item{\code{longitude}}{double COLUMN_DESCRIPTION}
  \item{\code{latitude}}{double COLUMN_DESCRIPTION}
  \item{\code{issues}}{character COLUMN_DESCRIPTION}
  \item{\code{prov}}{character COLUMN_DESCRIPTION}
  \item{\code{key}}{character COLUMN_DESCRIPTION}
  \item{\code{scientificName}}{character COLUMN_DESCRIPTION}
  \item{\code{datasetKey}}{character COLUMN_DESCRIPTION}
  \item{\code{publishingOrgKey}}{character COLUMN_DESCRIPTION}
  \item{\code{networkKeys}}{list COLUMN_DESCRIPTION}
  \item{\code{installationKey}}{character COLUMN_DESCRIPTION}
  \item{\code{publishingCountry}}{character COLUMN_DESCRIPTION}
  \item{\code{protocol}}{character COLUMN_DESCRIPTION}
  \item{\code{lastCrawled}}{character COLUMN_DESCRIPTION}
  \item{\code{lastParsed}}{character COLUMN_DESCRIPTION}
  \item{\code{crawlId}}{integer COLUMN_DESCRIPTION}
  \item{\code{hostingOrganizationKey}}{character COLUMN_DESCRIPTION}
  \item{\code{basisOfRecord}}{character COLUMN_DESCRIPTION}
  \item{\code{occurrenceStatus}}{character COLUMN_DESCRIPTION}
  \item{\code{taxonKey}}{integer COLUMN_DESCRIPTION}
  \item{\code{kingdomKey}}{integer COLUMN_DESCRIPTION}
  \item{\code{phylumKey}}{integer COLUMN_DESCRIPTION}
  \item{\code{classKey}}{integer COLUMN_DESCRIPTION}
  \item{\code{orderKey}}{integer COLUMN_DESCRIPTION}
  \item{\code{familyKey}}{integer COLUMN_DESCRIPTION}
  \item{\code{acceptedTaxonKey}}{integer COLUMN_DESCRIPTION}
  \item{\code{acceptedScientificName}}{character COLUMN_DESCRIPTION}
  \item{\code{kingdom}}{character COLUMN_DESCRIPTION}
  \item{\code{phylum}}{character COLUMN_DESCRIPTION}
  \item{\code{order}}{character COLUMN_DESCRIPTION}
  \item{\code{family}}{character COLUMN_DESCRIPTION}
  \item{\code{genericName}}{character COLUMN_DESCRIPTION}
  \item{\code{taxonRank}}{character COLUMN_DESCRIPTION}
  \item{\code{taxonomicStatus}}{character COLUMN_DESCRIPTION}
  \item{\code{elevation}}{double COLUMN_DESCRIPTION}
  \item{\code{elevationAccuracy}}{double COLUMN_DESCRIPTION}
  \item{\code{stateProvince}}{character COLUMN_DESCRIPTION}
  \item{\code{year}}{integer COLUMN_DESCRIPTION}
  \item{\code{month}}{integer COLUMN_DESCRIPTION}
  \item{\code{day}}{integer COLUMN_DESCRIPTION}
  \item{\code{eventDate}}{double COLUMN_DESCRIPTION}
  \item{\code{modified}}{character COLUMN_DESCRIPTION}
  \item{\code{lastInterpreted}}{character COLUMN_DESCRIPTION}
  \item{\code{license}}{character COLUMN_DESCRIPTION}
  \item{\code{institutionKey}}{character COLUMN_DESCRIPTION}
  \item{\code{collectionKey}}{character COLUMN_DESCRIPTION}
  \item{\code{isInCluster}}{logical COLUMN_DESCRIPTION}
  \item{\code{geodeticDatum}}{character COLUMN_DESCRIPTION}
  \item{\code{class}}{character COLUMN_DESCRIPTION}
  \item{\code{countryCode}}{character COLUMN_DESCRIPTION}
  \item{\code{country}}{character COLUMN_DESCRIPTION}
  \item{\code{county}}{character COLUMN_DESCRIPTION}
  \item{\code{gbifID}}{character COLUMN_DESCRIPTION}
  \item{\code{type}}{character COLUMN_DESCRIPTION}
  \item{\code{catalogNumber}}{character COLUMN_DESCRIPTION}
  \item{\code{institutionCode}}{character COLUMN_DESCRIPTION}
  \item{\code{fieldNotes}}{character COLUMN_DESCRIPTION}
  \item{\code{http://unknown.org/CatalogNumberNumeric}}{character COLUMN_DESCRIPTION}
  \item{\code{verbatimElevation}}{character COLUMN_DESCRIPTION}
  \item{\code{http://unknown.org/LatestDateCollected}}{character COLUMN_DESCRIPTION}
  \item{\code{recordNumber}}{character COLUMN_DESCRIPTION}
  \item{\code{identifier}}{character COLUMN_DESCRIPTION}
  \item{\code{nomenclaturalCode}}{character COLUMN_DESCRIPTION}
  \item{\code{higherGeography}}{character COLUMN_DESCRIPTION}
  \item{\code{verbatimEventDate}}{character COLUMN_DESCRIPTION}
  \item{\code{verbatimCoordinateSystem}}{character COLUMN_DESCRIPTION}
  \item{\code{locality}}{character COLUMN_DESCRIPTION}
  \item{\code{datasetName}}{character COLUMN_DESCRIPTION}
  \item{\code{collectionCode}}{character COLUMN_DESCRIPTION}
  \item{\code{occurrenceID}}{character COLUMN_DESCRIPTION}
  \item{\code{recordedBy}}{character COLUMN_DESCRIPTION}
  \item{\code{disposition}}{character COLUMN_DESCRIPTION}
  \item{\code{ownerInstitutionCode}}{character COLUMN_DESCRIPTION}
  \item{\code{startDayOfYear}}{character COLUMN_DESCRIPTION}
  \item{\code{samplingProtocol}}{character COLUMN_DESCRIPTION}
  \item{\code{collectionID}}{character COLUMN_DESCRIPTION}
  \item{\code{genusKey}}{integer COLUMN_DESCRIPTION}
  \item{\code{speciesKey}}{integer COLUMN_DESCRIPTION}
  \item{\code{genus}}{character COLUMN_DESCRIPTION}
  \item{\code{species}}{character COLUMN_DESCRIPTION}
  \item{\code{specificEpithet}}{character COLUMN_DESCRIPTION}
  \item{\code{dateIdentified}}{character COLUMN_DESCRIPTION}
  \item{\code{rightsHolder}}{character COLUMN_DESCRIPTION}
  \item{\code{municipality}}{character COLUMN_DESCRIPTION}
  \item{\code{language}}{character COLUMN_DESCRIPTION}
  \item{\code{occurrenceRemarks}}{character COLUMN_DESCRIPTION}
  \item{\code{identifiedBy}}{character COLUMN_DESCRIPTION}
  \item{\code{continent}}{character COLUMN_DESCRIPTION}
  \item{\code{lifeStage}}{character COLUMN_DESCRIPTION}
  \item{\code{coordinatePrecision}}{double COLUMN_DESCRIPTION}
  \item{\code{coordinateUncertaintyInMeters}}{double COLUMN_DESCRIPTION}
  \item{\code{eventID}}{character COLUMN_DESCRIPTION}
  \item{\code{http://unknown.org/taxonRankID}}{character COLUMN_DESCRIPTION}
  \item{\code{dynamicProperties}}{character COLUMN_DESCRIPTION}
  \item{\code{verbatimLocality}}{character COLUMN_DESCRIPTION}
  \item{\code{http://unknown.org/subspecies}}{character COLUMN_DESCRIPTION}
  \item{\code{vernacularName}}{character COLUMN_DESCRIPTION}
  \item{\code{otherCatalogNumbers}}{character COLUMN_DESCRIPTION}
  \item{\code{taxonConceptID}}{character COLUMN_DESCRIPTION}
  \item{\code{http://unknown.org/species}}{character COLUMN_DESCRIPTION}
  \item{\code{infraspecificEpithet}}{character COLUMN_DESCRIPTION}
  \item{\code{references}}{character COLUMN_DESCRIPTION}
}
}
\usage{
gbif_30r
}
\description{
A small and heterogeneous dataset for testing
}
\details{
DETAILS
}
\keyword{datasets}
