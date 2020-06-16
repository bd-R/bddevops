#####################################
# Create a Package:
#####################################

#install.packages(c("devtools", "roxygen2", "usethis", "available"))
library(devtools)
library(roxygen2)
library(usethis)

# Check package name:
library(available)
available("bdtests")

# Create package:
create_package("C:/Users/tomer/Dropbox/GoogleDrive/PhD/R/bdverse_packages/bdtests")
use_git()
use_github()

# License the package
options(usethis.full_name = "Tomer Gueta")
use_gpl3_license()

# Adding the readme files
use_readme_rmd()
devtools::check()

# Adding testthat
use_testthat()
use_test()

# Adding spell checking
use_spell_check()

# Add data to package
use_data_raw()
usethis::use_data()
usethis::use_data("DATASET")


use_pipe()

use_version()

spelling::spell_check_package()

# README badges https://usethis.r-lib.org/reference/badges.html
  # Lifecycle badges: https://www.tidyverse.org/lifecycle/
  usethis::use_lifecycle_badge("experimental")


# Add Github links to DESCRIPTION
usethis::use_github_links()

# Add GitHub Actions for continuous integration checks +  add a badge for CI
devtools::install_github("r-lib/usethis") # The development version is needed for now
usethis::use_github_action_check_full() # The full setup (tidyverse like)
usethis::use_github_action_check_release() # A simple setup

