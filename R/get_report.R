#' @title To get report
#' @rdname get_report
#'
#' @param report pass true false
#'
#' @description To generate report as per rOpenSci
#' and bdverse standard
#' @return  prints rmarkdown report in HTML
#'
#' @export
#'

# template name
template_name <- "review_template.Rmd"

# get report function
get_report <- function() {

  # current_directory <- getwd()          # get current working directory

  if (!(file.exists(template_name))) # if template file does not exists,copy from bdtests.
    {
      file.copy(
        system.file("rmd/review_template.Rmd", package = "bdtests"),
        tempdir()
      )
    }
  # render
  rmarkdown::render(system.file(tempdir() + template_name),
    # output_file = tempfile(),
    quiet = FALSE,
    output_format = "html_document",
    output_dir = tempdir()
  )
  if (file.exists(template_name)) {
    # Delete file if it exists after rendering
    file.remove(template_name)
  }
}
