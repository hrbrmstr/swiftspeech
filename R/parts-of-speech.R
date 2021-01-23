#' Parts of speech
#'
#' @usage
#' parts_of_speech("The ripe taste of cheese improves with age.")
#' @param x words
#' @return (list) one vector with words, one with parts of speech
#' @export
#' @examples
#' parts_of_speech("The ripe taste of cheese improves with age.")
parts_of_speech <- function(x) {
  res <- .Call("part_of_speech", x)
  as.data.frame(stats::setNames(res, c("name", "tag")))
}