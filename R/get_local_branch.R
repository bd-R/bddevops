
#' @title To get branch name
#' @rdname get_local_branch
#'
#' @param dir_path a directory path of your git repository
#' by defult it is your current working directory
#'
#' Get current branch name
#' @return  current chrckout branch info
#'
#' @export

get_local_branch <- function(dir_path = ".") {
  repo_info <- git2r::repository_head(dir_path)
  return(repo_info)
}
