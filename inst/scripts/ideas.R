
# CI
basename(getwd()) # To extract pkg name
pkg_name <- basename(getwd())  # An example

if (!require("pacman")) install.packages("pacman")
deps <- pacman::p_depends(pkg_name, local = TRUE, character.only = TRUE)



# Open a checklist script 
file.edit(system.file("scripts", "rhub.R", package="bdtests"))


# Sandbox: to create a bdverse sandbox
devtools::dev_mode()