% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/base_scalapack_utility.r
\name{base.ownany}
\alias{base.ownany}
\title{Determining Local Ownership of a Distributed Matrix}
\usage{
base.ownany(dim, bldim, ICTXT = 0)
}
\arguments{
\item{dim}{global dimension}

\item{bldim}{blocking dimension}

\item{ICTXT}{BLACS context}
}
\description{
For advanced users only.
}
\details{
A simple wrapper of numroc. The return is the answer to
the question 'do I own any of the global matrix?'.  Passing a distributed
matrix is allowed, but often it is convenient to determine that information
without even having a distributed matrix on hand. In this case, explicitly
passing the appropriate information to the arguments \code{dim=},
\code{bldim=} (and \code{CTXT=} as necessary, since it defaults to 0) while
leaving \code{x} missing will produce the desired result. See the examples
below for more clarity.

The return for each function is local.
}
\examples{
\dontrun{
# Save code in a file "demo.r" and run with 2 processors by
# > mpiexec -np 2 Rscript demo.r

library(pbdBASE, quiet = TRUE)
init.grid()

iown <- ownany(dim=c(4, 4), bldim=c(2, 2), CTXT=0)
comm.print(iown, all.rank=T)

finalize()
}

}
\keyword{BLACS}
\keyword{Data}
\keyword{Distributing}

