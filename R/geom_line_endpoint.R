### StatLineendpoint

StatLineendpoint <- ggplot2::ggproto("StatLineendpoint",
                               ggplot2::Stat,
                               compute_group = function(data, scales) {

                                 data.frame(y = data$y[data$x == max(data$x)],
                                            x = max(data$x))

                               },

                               required_aes = c("x", "y")
)


#' geom_line_endpoint
#' @description add a charming endpoint to your lines
#'
#' @param mapping
#' @param data
#' @param position
#' @param na.rm
#' @param show.legend
#' @param inherit.aes
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(cars) + aes(x = speed, y = dist) + geom_line() + geom_line_endpoint()
#' ggplot(cars) + aes(x = speed, y = dist, color = dist > 15) + geom_line() + geom_line_endpoint()
#' ggplot(cars) + aes(x = speed, y = dist, color = dist > 15, linetype = speed > 16) + geom_line() + geom_line_endpoint()

geom_line_endpoint <- function(mapping = NULL, data = NULL,
                        position = "identity", na.rm = FALSE, show.legend = NA,
                        inherit.aes = TRUE, ...) {

  ggplot2::layer(
    stat = StatLineendpoint, geom = ggplot2::GeomPoint, data = data, mapping = mapping,
    position = position, show.legend = show.legend, inherit.aes = inherit.aes,
    params = list(na.rm = na.rm, ...)
  )

}
