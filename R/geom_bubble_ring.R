

#' geom_bubble
#' @description Like geom point but has a rim and a filling
#'
#' @param fill character string color name or hexidecimal entry
#' @param ...
#'
#' @return a ggplot2 layer
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(cars) +
#'   aes(x = speed, y = dist) +
#'   geom_bubble(size = 7,
#'     alpha = .85,
#'     color = "white",
#'     fill = "plum2"
#'    ) +
#'  theme_minimal()
geom_bubble <- function(fill = "grey35", ...)  {
  geom_point(shape = 21, fill = fill, ...)
}


#' geom_ring
#' @description Like geom point but only has a rim by default
#'
#' @param fill character string color name or hexidecimal entry
#' @param ...
#'
#' @return a ggplot2 layer
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(cars) +
#'   aes(x = speed, y = dist) +
#'   geom_ring(size = 7, color = "slateblue")
geom_ring <- function(...)  {
  geom_point(shape = 21, ...)
}


