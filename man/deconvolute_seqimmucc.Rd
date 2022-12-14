% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mouse_deconvolution_methods.R
\name{deconvolute_seqimmucc}
\alias{deconvolute_seqimmucc}
\title{Deconvolute using seqImmuCC}
\usage{
deconvolute_seqimmucc(
  gene_expression_matrix,
  algorithm = c("SVR", "LLSR"),
  ...
)
}
\arguments{
\item{gene_expression_matrix}{a m x n matrix with m genes and n samples. Data
should NOT be normalized (raw counts)}

\item{algorithm}{the method to use for deconvolution. Possible choices are
'SVR' for CIBERSORT or 'LLSR' for least squares regression}

\item{...}{passed through to original quantiseq method. A native argument takes precedence
over an immunedeconv argument}
}
\description{
Deconvolute using seqImmuCC
}
