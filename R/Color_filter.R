#' Convert a 3D RGB hex array to a magick image.
#'
#' @param rgb_data 3D RGB hex array with dimensions [3, width, height].
#' @return A magick image.
#' @export
rgb_array_to_magick <- function(rgb_data) {
  rgb_array <- aperm(rgb_data, c(3, 2, 1))
  height <- dim(rgb_array)[1]
  width <- dim(rgb_array)[2]
  color_matrix <- matrix(NA, nrow = height, ncol = width)
  for (i in 1:height) {
    for (j in 1:width) {
      r <- rgb_array[i, j, 1]
      g <- rgb_array[i, j, 2]
      b <- rgb_array[i, j, 3]
      color_matrix[i, j] <- paste0("#", r, g, b)
    }
  }
  return(magick::image_read(as.raster(color_matrix)))
}
