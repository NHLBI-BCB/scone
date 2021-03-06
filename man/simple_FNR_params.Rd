% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sample_filtering.R
\name{simple_FNR_params}
\alias{simple_FNR_params}
\title{Fit Logistic Regression Model of FNR against set of positive control 
(ubiquitously expressed) genes}
\usage{
simple_FNR_params(expr, pos_controls, fn_tresh = 0.01)
}
\arguments{
\item{expr}{matrix A matrix of transcript-proportional units (genes in rows,
cells in columns).}

\item{pos_controls}{A logical, numeric, or character vector indicating 
positive control genes that will be used to compute false-negative rate 
characteristics. User must provide at least 2 positive control genes.}

\item{fn_tresh}{Inclusive threshold for negative detection. Default 0.01. 
fn_tresh must be non-negative.}
}
\value{
A matrix of logistic regression coefficients corresponding to glm 
  fits in each sample (a and b in columns 1 and 2 respectively). If the 
  a & b fit does not converge, b is set to zero and only a is estimated.
}
\description{
Fit Logistic Regression Model of FNR against set of positive control 
(ubiquitously expressed) genes
}
\details{
logit(Probability of False Negative) ~ a + b*(median log-expr)
}
\examples{
mat <- matrix(rpois(1000, lambda = 3), ncol=10)
mat = mat * matrix(1-rbinom(1000, size = 1, prob = .01), ncol=10)
fnr_out = simple_FNR_params(mat,pos_controls = 1:10)

}

