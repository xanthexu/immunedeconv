% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/custom_deconvolution_methods.R
\name{deconvolute_cibersort_custom}
\alias{deconvolute_cibersort_custom}
\title{Deconvolute using CIBERSORT or CIBERSORT abs and a custom signature matrix.}
\usage{
deconvolute_cibersort_custom(
  gene_expression_matrix,
  signature_matrix,
  QN = FALSE,
  absolute = FALSE,
  abs_method = "sig.score",
  ...
)
}
\arguments{
\item{gene_expression_matrix}{a m x n matrix with m genes and n samples}

\item{signature_matrix}{a m x l matrix with m genes and l cell types. The
matrix should contain only a subset of the genes useful for the analysis.}

\item{QN}{boolean. Wheter to quantile normalize the data. Data should be normalized
when the signature matrix is derived from different studies/sample batches}

\item{absolute}{Set to TRUE for CIBERSORT absolute mode.}

\item{abs_method}{Choose method to compute absolute score (only if \code{absolute=TRUE}).}

\item{...}{passed through to the original CIBERSORT function. A native argument takes precedence
over an immunedeconv argument (e.g. \code{QN} takes precedence over \code{arrays}). Documentation
is not publicly available. Log in to the CIBERSORT website for details.}
}
\description{
Deconvolute using CIBERSORT or CIBERSORT abs and a custom signature matrix.
}
\note{
the gene expression and the signature matrix should be provided in the same normalization
}
