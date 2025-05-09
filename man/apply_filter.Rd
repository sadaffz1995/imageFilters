% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gray_and_thresholding.R
\name{apply_filter}
\alias{apply_filter}
\title{Apply a transformation function to all pixels of an image.}
\usage{
apply_filter(img_data, filter_function)
}
\arguments{
\item{img_data}{3D array of hex RGB values.}

\item{filter_function}{Function that returns transformed RGB values.}
}
\value{
Modified 3D array.
}
\description{
Apply a transformation function to all pixels of an image.
}
