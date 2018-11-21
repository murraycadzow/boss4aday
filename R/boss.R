#' boss_week
#'
#' @param x a character vector
#'
#' @return data.frame of the work-week with the boss for each day
#' @export
#'
#' @examples
#' boss_week(c("Harry","Sally","Bob","Frieda"))
boss_week <- function(x){
  return(
    data.frame(day = c("Monday", "Tuesday","Wednesday","Thursday","Friday"),boss = sample(x = x, size = 5, replace = TRUE), stringsAsFactors = FALSE)
  )
}

#' boss_choose
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
boss_choose <- function(x){
  sample(x = x, size = 1)
}


#' boss_post
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
boss_post <- function(x){
  stopifnot(requireNamespace("slackr", quietly = TRUE))


}
