library(tidyverse)

# function to get all repositories names from bd-R github
get_repos <- function() {
  repos <- rvest::read_html("https://github.com/orgs/bd-R/repositories") %>% 
  rvest::html_elements("h3") %>% 
  rvest::html_text2() %>%
  # to skip matching package names
  .[regexpr("(guide|website|docker|bdgraphics|bdverse|Testing)", .) == -1]
  return(repos)
}
# function to get 
pkg_deps <- function(target_pkg, branch) {
  link <- paste0(
  	"https://github.com/bd-R/", 
  	target_pkg, 
  	"/tree/",
  	branch,
  	"/R"
  )
  # get scripts from R directory in package github repo
  scripts <- rvest::read_html(link) %>% 
    rvest::html_elements("span") %>% 
    rvest::html_text2() %>%
    regmatches(., regexpr(".*\\w*\\.R", .))
  res <- data.frame()
  repos <- get_repos()
  for (i in scripts) {
    raw_link <- paste0(
      "https://raw.githubusercontent.com/bd-R/", 
      target_pkg, 
      "/",
      branch,
      "/R/", 
      i
    )
    # to prevent timeout from github
    Sys.sleep(sample(seq(1, 1.5, by=0.01), 1))
    # read every collected script file
    file <- readLines(raw_link, warn = FALSE)
    for (j in repos) {
      txt <- file %>%
        .[regexpr("^#'", .) == -1] %>% # skip roxygen notes
        .[grepl(paste0(j, "::"), .)]
      # pattern for regex 'package::function()'
      key <- paste0(j, ":{2,3}\\w*\\(")
      if (length(regmatches(txt, regexpr(key, txt))) == 0) {
        NULL
      } else {
        fx <- paste0(regmatches(txt, regexpr(key, txt)), ")")
        func <- gsub("^.*::|:::", "\\2", fx) # function name
        source <- gsub("[::|:::].*$", "\\1", fx) # source package
        # line where the function appears 
        line <- which(grepl(paste0(unique(fx), collapse="|"), file))
        link_line <- paste0(link, "/", i, "#L", line) #github link to function
        res <- rbind(
          res, 
          data.frame(source, function_name = func, line, file = i, link_line)
        )
      }
    }
  }
  return(res)
}
# function to search any word in bd-R github (in theory)
# func_deps <- function(func, branch, ignore_pkg) {
#   message(paste0("Looking for ", func, "() function in bdverse"))
#   repos <- get_repos() %>% 
#     .[ignore_pkg != .]
#   res <- data.frame()
#   for (i in repos) {
#     message(i)
#     link <- paste0("https://github.com/bd-R/", i, "/tree/", branch, "/R")
#     scripts <- rvest::read_html(link) %>% 
#       rvest::html_elements("span") %>% 
#       rvest::html_text2() %>%
#       regmatches(., regexpr(".*\\w*\\.R", .))
#     for (j in scripts) {
#       raw_link <- paste0(
#         "https://raw.githubusercontent.com/bd-R/", 
#         i, 
#         "/",
#         branch,
#         "/R/", 
#         j
#       )
#       Sys.sleep(sample(seq(1, 2, by=0.001), 1))
#       file <- readLines(raw_link, warn = FALSE) %>%
#         .[regexpr("^#'", .) == -1]
#       tmp <- regmatches(file, regexpr(func, file))
#       if (length(tmp) == 0) {
#         NULL
#       } else {
#         line <- which(regexpr(func, file) != -1)
#         link_line <- paste0(link, "/", j, "#L", line)
#         res <- rbind(
#           res, 
#           data.frame(package = i, line, file = j, link_line)
#         )
#       }
#     }
#   }
#   return(res)
# }