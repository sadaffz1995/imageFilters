---
title: "imageFilters Package"
output: github_document
---

# imageFilters

The `imageFilters` package provides basic image processing functions using the **magick** package in R. It allows you to convert images to grayscale, apply thresholding, and manipulate RGB values using hex color codes.

---

## 📦 Installation

You can install the development version of this package from GitHub:

```r
# install.packages("devtools") # if needed
devtools::install_github("sadaffz1995/imageFilters")

install.packages(c("magick", "renv", "devtools", "roxygen2", "tinytex"))
Function | Description


#List of functions

hex_to_int() -> Convert a hex string to an integer
int_to_hex() -> Convert an integer to a 2-digit hex string
to_greyscale() -> Convert RGB pixel to grayscale
apply_filter() -> Apply a filter to an image
apply_threshold() -> Black/white thresholding based on brightness
apply_custom_threshold() -> Thresholding with user-defined colors
rgb_array_to_magick() -> Convert 3D RGB hex array to magick image

---

