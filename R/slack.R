#' boss_slack_week
#'
#' @param x
#'
#' @return NULL
#' @export
#'
#' @examples
#' boss_slack_week(x = c("Harry","Sally","Bob","Frieda"), channel = "#general")
boss_slack_week <- function(x, channel){
  stopifnot(requireNamespace("slackr", quietly = TRUE))
  slackr::slackr_setup(channel = channel)
  boss_df <- boss_week(x)
  co <- capture.output(boss_df)
  co <- co[-1]
  Sys.setenv("SLACK_CHANNEL" = channel)
  slackr::slackr_msg(txt = "The bosses for the week are:")
  slackr::slackr_msg(txt = co)
  Sys.setenv("SLACK_CHANNEL" = "")
}


#' boss_slack_choose
#'
#' @param x
#'
#' @return NULL
#' @export
#'
#' @examples
#' boss_slack_choose(x = c("Harry","Sally","Bob","Frieda"), channel = "#general")
boss_slack_choose <- function(x, channel){
  stopifnot(requireNamespace("slackr", quietly = TRUE))
  slackr::slackr_setup(channel = channel)
  Sys.setenv("SLACK_CHANNEL" = channel)
  slackr::slackr_msg(txt = "The boss is:")
  slackr::slackr_msg(txt = boss_choose(x))
  Sys.setenv("SLACK_CHANNEL" = "")
  }
