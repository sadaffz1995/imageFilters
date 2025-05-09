% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gray_and_thresholding.R
\name{apply_threshold}
\alias{apply_threshold}
\title{Apply thresholding to an image based on grayscale value.}
\usage{
apply_threshold(
  img_data,
  cutoff = 127,
  low_color = c("00", "00", "00"),
  high_color = c("FF", "FF", "FF")
)
}
\arguments{
\item{img_data}{3D array of RGB hex values.}

\item{cutoff}{Integer grayscale cutoff value.}

\item{low_color}{RGB hex vector for below threshold.}

\item{high_color}{RGB hex vector for above threshold.}
}
\value{
3D array of thresholded RGB values.
}
\description{
Apply thresholding to an image based on grayscale value.
}
