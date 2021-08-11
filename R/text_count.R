#' geom_text_count
#' @description Add label which is the count.  Acts like geom_bar() but text label at the position of the top of the bar.
#'
#' @param nudge_y
#' @param position
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars) +
#'    aes(x = cyl) +
#'    geom_bar() +
#'    geom_text_count(nudge_y = .5)
geom_text_count <- function(nudge_y = 0, position =
                              ggplot2::position_dodge2(width = .9,
                                                       preserve = "single"), ...){

  ggplot2::stat_count(geom = "text",
                      ggplot2::aes(label = ggplot2::after_stat(count),
                                   y = ggplot2::after_stat(count) + nudge_y),
                      vjust = 0,
                      position = position,
                      ...
  )

}
