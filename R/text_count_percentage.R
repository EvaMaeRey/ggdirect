

#' geom_text_count_percent
#' @description Add label which is the count as well as percentage.  Acts like geom_bar() but text label at the position of the top of the bar.  Percentage is calculated within facet panels.
#'
#' @param nudge_y
#' @param lineheight
#' @param position
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars) +
#'     aes(x = cyl) +
#'     geom_bar() +
#'     geom_text_count_percent(nudge_y = .5)
geom_text_count_percent <- function(nudge_y = 0,
                                    lineheight = .85,
                                    position = ggplot2::position_dodge2(width = .9,
                                                               preserve = "single"), ...){

  stat_count(geom = "text",
             ggplot2::aes(label = paste0(after_stat(count), "\n(",

                                round(
                                  100*(ggplot2::after_stat(count))/
                                    tapply(ggplot2::after_stat(count),
                                           ..PANEL..,
                                           sum)[..PANEL..],
                                  1), "%)" ),
                 y = ggplot2::after_stat(count) + nudge_y),
             vjust = 0,
             lineheight = lineheight,
             position = position,
             ...
             )
}




