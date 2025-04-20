## imageFilters: Image Processing Functions Using magick


#' Convert a hex string to an integer.
#'
#' @param hex A hexadecimal color value (e.g., "FF").
#' @return An integer representation of the hex value.
#' @export
hex_to_int <- function(hex) {
  as.integer(strtoi(hex, base = 16))
}

#' Convert an integer to a two-digit uppercase hex string.
#'
#' @param int An integer (0-255).
#' @return A hex string (e.g., "0A", "FF").
#' @export
int_to_hex <- function(int) {
  toupper(sprintf("%02x", int))
}
