% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SCONE_DEFAULTS.R
\name{UQ_FN}
\alias{UQ_FN}
\title{Upper-quartile normalization wrapper.}
\usage{
UQ_FN(ei)
}
\arguments{
\item{ei}{Numerical matrix. (rows = genes, cols = samples).}
}
\value{
Upper-quartile normalized matrix.
}
\description{
Upper-quartile normalization wrapper.
}
\details{
SCONE scaling wrapper for
  \code{\link[EDASeq]{betweenLaneNormalization}}).
}
\examples{
ei <- matrix(0:20,nrow = 7)
eo <- UQ_FN(ei)

}

