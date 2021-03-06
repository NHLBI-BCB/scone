% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SCONE_DEFAULTS.R
\name{FQ_FN}
\alias{FQT_FN}
\alias{FQ_FN}
\title{Full-quantile normalization wrapper.}
\usage{
FQ_FN(ei)

FQT_FN(ei)
}
\arguments{
\item{ei}{Numerical matrix. (rows = genes, cols = samples).}
}
\value{
Full-quantile normalized matrix.
}
\description{
Full-quantile normalization wrapper.
}
\details{
SCONE "scaling" wrapper for
  \code{\link[aroma.light]{normalizeQuantileRank.matrix}}).

FQT_FN handles ties carefully (see
  \code{\link[limma]{normalizeQuantiles}}).
}
\examples{
ei <- matrix(0:20,nrow = 7)
eo <- FQ_FN(ei)

ei <- matrix(0:20,nrow = 7)
eo <- FQT_FN(ei)

}

