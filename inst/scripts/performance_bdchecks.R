library(bdchecks)
library(foreach)
library(data.table)
library(tidyverse)

rm(list=ls())

data <- list(
  # gbif_1r = bdtests::gbif_1r,
  # gbif_1k = bdtests::gbif_1k,
  gbif_10k = bdtests::gbif_10k,
  gbif_10k_latest = bdtests::gbif_10k_latest
  # idigbio_1r = bdtests::idigbio_1r,
  # idigbio_1k = bdtests::idigbio_1k,
  # idigbio_10k = bdtests::idigbio_10k
  # idigbio_10k_latest = bdtests::idigbio_10k_latest
)

# Run this old version
remotes::install_github('bd-R/bdchecks@4c1f56a2024f65d2ac0ef39e8bfc7845371de64f',
                        upgrade = "never")
result_performance1 <- foreach(i = names(data), .combine = rbind) %do% {
  print(i)
  foreach(j = sort(names(data.checks@dc_body)), .combine = rbind) %do% {
    print(j)
    time_start <- Sys.time()
    result <- tryCatch({
      perform_dc(data[[i]], j)@flags[[1]]@result},
      error = function(e) {
        NA
      }
    )
    time_end <- Sys.time()
    data.frame(
      data = i, dc = j,
      performed = length(na.omit(result)),
      time = time_end - time_start
    )
  }
}

# Run this new version
remotes::install_github('bd-R/bdchecks',
                        upgrade = "never")
result_performance2 <- foreach(i = names(data), .combine = rbind) %do% {
  print(i)
  foreach(j = sort(names(data.checks@dc_body)), .combine = rbind) %do% {
    print(j)
    time_start <- Sys.time()
    result <- tryCatch({
      perform_dc(data[[i]], j)@flags[[1]]@result},
      error = function(e) {
        NA
      }
    )
    time_end <- Sys.time()
    data.frame(
      data = i, dc = j,
      performed = length(na.omit(result)),
      time = time_end - time_start
    )
  }
}


pd <- rbind(
  # Old version result
  data.table(result_performance1, bdchecks = "old"),
  # New version (implemented only unique value checks) result
  data.table(result_performance2, bdchecks = "new")
) %>%
  # DC that were not performed will be removed
  # 0 means that all values were NA (Maybe column was missing)
  .[performed > 0] %>%
  .[, data := sub("_10k", "", data)] %>%
  .[, dc := gsub("_", " ", sub("^(notification|validation)_", "", dc))]

ggplot(pd, aes(dc, time, fill = bdchecks)) +
  geom_bar(
    stat = "identity", position = "dodge",
    width = 0.7, color = "black"
  ) +
  scale_x_discrete(limits = pd[, mean(time), dc][order(V1)]$dc) +
  coord_flip() +
  facet_wrap(~ data, ncol = 2) +
  scale_fill_brewer(palette = "Dark2") +
  labs(
    title = "bdchecks performance time on 10K entries",
    subtitle = "Measured for old and new version of bdchecks",
    x = "Data check",
    y = "Performance time, seconds",
    fill = "bdchecks version"
  ) +
  theme_classic() +
  theme(
    legend.position = "bottom"
  )
# Alert me when done
browseURL("https://www.youtube.com/watch?v=t99KH0TR-J4")
