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
#' # without function
#' library(ggplot2)
#' ggplot(cars) +
#'   aes(x = speed, y = dist) +
#'   geom_ring(size = 7, color = "slateblue")
#'
#'  geom_ring
#'
#' # using function
#' library(ggplot2)
#' ggplot(cars) +
#'   aes(x = speed, y = dist) +
#'   geom_ring(size = 7, color = "slateblue")
geom_ring <- function(...)  {
  geom_point(shape = 21, ...)
}


