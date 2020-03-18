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
