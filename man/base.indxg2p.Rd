% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coords.r
\name{base.indxg2p}
\alias{base.indxg2p}
\title{indxg2p}
\usage{
base.indxg2p(INDXGLOB, NB, NPROCS)
}
\arguments{
\item{INDXGLOB}{Global index.}

\item{NB}{Block size.}

\item{NPROCS}{Total number of processors over which matrix is distributed.}
}
\description{
Computes the process coordinate which contains the entry of a
distributed matrix specified by a global index INDXGLOB.  
Simplified reimplementation of the ScaLAPACK aux INDXG2P function.
}
\details{
For advanced users only.
}

