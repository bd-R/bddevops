#####################################
# rhub:
#####################################

# install.packages("rhub")
library(rhub)

validate_email()

chk <- rhub::check_for_cran()
# wait a bit
chk$cran_summary()




check()
getwd()

rhub::platforms()$name









grepl(
  "[Rr](-)?( )?[Hh]ub",
  c("R hub", "Rhub", "R-hub", "r hub", "r-hub")
)
