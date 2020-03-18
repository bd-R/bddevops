#####################################
min R version + Dependencies:
#####################################
# https://stackoverflow.com/questions/38686427/determine-minimum-r-version-for-all-package-dependencies
# https://github.com/satRdays/chicago2019-slides/blob/master/02_Burns_Recursive_Package_Dependencies.pdf

min_r_version <- function(package = "ggplot2", exclude_main_pkg = TRUE) {
  purrr::walk(
    c("tools", "purrr", "devtools", "stringi", "tidyr", "dplyr"),
    require,
    character.only = TRUE
  )

  deps <- package_dependencies(package, recursive = TRUE)

  if (exclude_main_pkg) {
    pkgs <- deps[[1]]
  } else {
    pkgs <- c(package, deps[[1]])
  }

  available.packages() %>%
    as_tibble() %>%
    filter(Package %in% pkgs) %>%
    select(Package, Version, Depends) %>%
    as.data.frame() -> pkg_list

  # if main pkg only relied on core R packages (i.e. pkgs that aren't in CRAN) and we
  # excluded the pkg itself from the min version calculation, this is an edge case we need
  # to handle.

  if (length(pkg_list) == 0) {
    return("Unspecified")
  }

  stri_split_regex(pkg_list, "[,]") %>%
    unlist() %>%
    trimws() %>%
    stri_match_all_regex(c("^R$|^R \\(.*\\)$")) %>%
    unlist() %>%
    discard(is.na(.)) %>%
    unique() %>%
    stri_replace_all_regex("[R >=\\(\\)]", "") %>%
    data_frame(vs = .) %>%
    separate(vs, c("a", "b", "c"), fill = "right") %>%
    mutate(c = ifelse(is.na(c), 0, c)) %>%
    arrange(a, b, c) %>%
    tail(1) %>%
    unite(min, a:c, sep = ".") -> vs

  return(vs$min)
}


library(pkgnet)
pkgnet:::silence_logger()
funcReporter2 <- pkgnet::FunctionReporter$new()
funcReporter2$layout_type <- "layout_as_tree"
funcReporter2$set_package(
  pkg_name = "bdchecks",
)
funcReporter2$calculate_default_measures()
g <- visNetwork::visHierarchicalLayout(
  graph = funcReporter2$graph_viz,
  direction = "BU",
  sortMethod = "hubsize",
  edgeMinimization = FALSE
)
g <- visNetwork::visInteraction(
  graph = g,
  dragNodes = TRUE,
  dragView = TRUE,
  zoomView = FALSE
)
g
str(funcReporter2)
funcReporter2$nodes

db <- utils::installed.packages(lib.loc = .libPaths())
deps <- unlist(tools::package_dependencies(
  "bdchecks"
  , reverse = FALSE
  , recursive = FALSE
  , db = db
  , which = private$dep_types
))


library(tools)
library(tidyverse)
tbl <-
  tibble::tibble(
    FunctionName = funcReporter2$graph_viz$x$nodes$node,

    Title = unlist(lapply(funcReporter2$graph_viz$x$nodes$node, function(x) {
      rd_gh_path <- paste0("https://raw.githubusercontent.com/bd-R/bdDwC/master/man/", x, ".Rd")
      rd_file <-  tools::parse_Rd(rd_gh_path)
      tags <- tools:::RdTags(rd_file)
      title_text <- rd_file[[which(tags == "\\title")]][1][[1]][1]
    })),

    Description = unlist(lapply(funcReporter2$graph_viz$x$nodes$node, function(x) {
      rd_gh_path <- paste0("https://raw.githubusercontent.com/bd-R/bdDwC/master/man/", x, ".Rd")
      rd_file <- parse_Rd(rd_gh_path)
      tags <- tools:::RdTags(rd_file)
      des_text <- rd_file[[which(tags == "\\description")]][2][[1]][1]
    })),

    isExported = funcReporter2$graph_viz$x$nodes$isExported,

    GithubURL = c(
      '<a href="https://github.com/bd-R/bdDwC/blob/master/R/dictionary.R#L86">Link</a>',
      '<a href="https://github.com/bd-R/bdDwC/blob/master/R/darwinizer.R#L23">Link</a>',
      '<a href="https://github.com/bd-R/bdDwC/blob/master/R/dictionary.R#L27">Link</a>',
      '<a href="https://github.com/bd-R/bdDwC/blob/master/R/dictionary.R#L130">Link</a>',
      '<a href="https://github.com/bd-R/bdDwC/blob/master/R/darwinizer.R#L203">Link</a>',
      '<a href="https://github.com/bd-R/bdDwC/blob/master/R/darwinizer.R#L152">Link</a>',
      '<a href="https://github.com/bd-R/bdDwC/blob/master/R/test.R#L96">Link</a>',
      '<a href="https://github.com/bd-R/bdDwC/blob/master/R/test.R#L116">Link</a>',
      '<a href="https://github.com/bd-R/bdDwC/blob/master/R/test.R#L39">Link</a>',
      '<a href="https://github.com/bd-R/bdDwC/blob/master/R/test.R#L68">Link</a>',
      '<a href="https://github.com/bd-R/bdDwC/blob/master/R/test.R#L11">Link</a>'
    )
  )



# did we handle the edge cases well enought?
base <- c("base", "compiler", "datasets", "grDevices", "graphics", "grid", "methods", "parallel", "profile", "splines", "stats", "stats4", "tcltk", "tools", "translations")
(base_reqs <- purrr::map_chr(base, min_r_version))
##  [1] "Unspecified" "Unspecified" "Unspecified" "Unspecified" "Unspecified"
##  [6] "Unspecified" "Unspecified" "Unspecified" "Unspecified" "Unspecified"
## [11] "Unspecified" "Unspecified" "Unspecified" "Unspecified" "Unspecified"

# a few of the "core" contributed pkgs rely on a pkg or two outside of base
# but many only rely on base packages, to this is another gd edge case to
# text for.
contrib <- c("KernSmooth", "MASS", "Matrix", "boot", "class", "cluster", "codetools", "foreign", "lattice", "mgcv", "nlme", "nnet", "rpart", "spatial", "survival")
contrib_reqs <- purrr::map_chr(contrib, min_r_version)
##  [1] "Unspecified" "Unspecified" "3.0.0"       "Unspecified" "3.1.0"
##  [6] "Unspecified" "Unspecified" "Unspecified" "Unspecified" "3.0.2"
## [11] "3.0.0"       "Unspecified" "Unspecified" "Unspecified" "3.0.1"

# See what the min version of R shld be for some of my pkgs
min_r_version("ggalt") # I claim R (>= 3.0.0) in DESCRIPTION
## [1] "3.1.2"

min_r_version("curlconverter") # I claim R (>= 3.0.0) in DESCRIPTION
## [1] "3.1.2"

min_r_version("iptools") # I claim R (>= 3.0.0) in DESCRIPTION
## [1] "3.0.0"


min_r_version <- function(pkg) {
  requireNamespace("tools")
  requireNamespace("utils")
  avail <- utils::available.packages(utils::contrib.url(repo))
  deps <- tools::package_dependencies(pkg, db = avail, recursive = TRUE)
  if (is.null(deps))
    stop("package not found")

  pkgs <- deps[[1]]
  repo = getOption("repo")
  if (is.null(repo))
    repo <- "https://cloud.r-project.org"

  matches <- avail[ , "Package"] %in% pkgs
  pkg_list <- avail[matches, "Depends"]
  vers <- grep("^R$|^R \\(.*\\)$", pkg_list, value = TRUE)
  vers <- gsub("[^0-9.]", "", vers)
  if (length(vers) == 0)
    return("Not specified")

  max_ver = vers[1]
  if (length(vers) == 1)
    return(max_ver)

  for (v in 2:length(vers))
    if (utils::compareVersion(vers[v], max_ver) > 0)
      max_ver <- vers[v]

  max_ver
}


min_r_version("bdchecks")
