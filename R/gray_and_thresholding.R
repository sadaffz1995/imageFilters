#' Convert RGB hex values to grayscale using the luminance formula.
#'
#' @param r, g, b Red, green, and blue values in hex.
#' @return A vector of grayscale values in hex.
#' @export
to_greyscale <- function(r, g, b) {
  r_val <- hex_to_int(r)
  g_val <- hex_to_int(g)
  b_val <- hex_to_int(b)
  grey_val <- round(0.299 * r_val + 0.587 * g_val + 0.114 * b_val)
  grey_hex <- int_to_hex(grey_val)
  return(c(grey_hex, grey_hex, grey_hex))
}

#' Apply a transformation function to all pixels of an image.
#'
#' @param img_data 3D array of hex RGB values.
#' @param filter_function Function that returns transformed RGB values.
#' @return Modified 3D array.
#' @export
apply_filter <- function(img_data, filter_function) {
  filtered <- as.character(img_data)
  dim(filtered) <- dim(img_data)
  width <- dim(img_data)[2]
  height <- dim(img_data)[3]
  for (x in 1:width) {
    for (y in 1:height) {
      r <- img_data[1, x, y]
      g <- img_data[2, x, y]
      b <- img_data[3, x, y]
      new_rgb <- filter_function(r, g, b)
      filtered[1, x, y] <- new_rgb[1]
      filtered[2, x, y] <- new_rgb[2]
      filtered[3, x, y] <- new_rgb[3]
    }
  }
  return(filtered)
}

#' Apply thresholding to an image based on grayscale value.
#'
#' @param img_data 3D array of RGB hex values.
#' @param cutoff Integer grayscale cutoff value.
#' @param low_color RGB hex vector for below threshold.
#' @param high_color RGB hex vector for above threshold.
#' @return 3D array of thresholded RGB values.
#' @export
apply_threshold <- function(img_data, cutoff = 127, low_color = c("00", "00", "00"), high_color = c("FF", "FF", "FF")) {
  filtered <- as.character(img_data)
  dim(filtered) <- dim(img_data)
  width <- dim(img_data)[2]
  height <- dim(img_data)[3]
  for (x in 1:width) {
    for (y in 1:height) {
      r <- img_data[1, x, y]
      g <- img_data[2, x, y]
      b <- img_data[3, x, y]
      r_val <- hex_to_int(r)
      g_val <- hex_to_int(g)
      b_val <- hex_to_int(b)
      grey_val <- round(0.299 * r_val + 0.587 * g_val + 0.114 * b_val)
      new_rgb <- if (grey_val < cutoff) low_color else high_color
      filtered[1, x, y] <- new_rgb[1]
      filtered[2, x, y] <- new_rgb[2]
      filtered[3, x, y] <- new_rgb[3]
    }
  }
  return(filtered)
}
