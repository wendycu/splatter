% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SCE-functions.R
\name{addFeatureStats}
\alias{addFeatureStats}
\title{Add feature statistics}
\usage{
addFeatureStats(sce, value = c("counts", "cpm", "tpm", "fpkm"), log = FALSE,
  offset = 1, no.zeros = FALSE)
}
\arguments{
\item{sce}{SingleCellExperiment to add feature statistics to.}

\item{value}{the expression value to calculate statistics for. Options are
"counts", "cpm", "tpm" or "fpkm". The values need to exist in the
given SingleCellExperiment.}

\item{log}{logical. Whether to take log2 before calculating statistics.}

\item{offset}{offset to add to avoid taking log of zero.}

\item{no.zeros}{logical. Whether to remove all zeros from each feature before
calculating statistics.}
}
\value{
SingleCellExperiment with additional feature statistics
}
\description{
Add additional feature statistics to a SingleCellExperiment object
}
\details{
Currently adds the following statistics: mean, variance, coefficient of
variation, median and median absolute deviation. Statistics are added to
the \code{\link{rowData}} slot and are named \code{Stat[Log]Value[No0]} where
\code{Log} and \code{No0} are added if those arguments are true.
UpperCamelCase is used to differentiate these columns from those added by
analysis packages.
}
