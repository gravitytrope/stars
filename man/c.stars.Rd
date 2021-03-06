% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stars.R
\name{c.stars}
\alias{c.stars}
\title{combine multiple stars objects, or combine multiple attributes in a single stars object into a single array}
\usage{
\method{c}{stars}(..., along = NA_integer_)
}
\arguments{
\item{...}{object(s) of class \code{star}: in case of multiple arguments, these are combined into a single stars object, in case of a single argument, its attributes are combined into a single attribute. In case of multiple objects, all objects should have the same dimensionality.}

\item{along}{integer; see \link{read_stars}}
}
\description{
combine multiple stars objects, or combine multiple attributes in a single stars object into a single array
}
\examples{
tif = system.file("tif/L7_ETMs.tif", package = "stars")
x = read_stars(tif)
(new = c(x, x))
c(new) # collapses two arrays into one with an additional dimension
c(x, x, along = 3)
}
