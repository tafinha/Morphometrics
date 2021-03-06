\name{RandomMatrix}
\alias{RandomMatrix}
\title{Random matrices for tests}
\usage{
RandomMatrix(num.traits, num.matrices = 1, min.var = 1, max.var = 1,
  variance = NULL, ke = 10^-3)
}
\arguments{
  \item{num.traits}{Number of traits in random matrix}

  \item{num.matrices}{Number of generated matrix. If
  greater than 1, a list is returned.}

  \item{min.var}{Lower value for random variance in
  covariance matrices}

  \item{max.var}{Upper value for random variance in
  covariance matrices}

  \item{variance}{Variance vector. If present will be used
  in all matrices}

  \item{ke}{Parameter for correlation matrix generation.
  Involves check for positive defitness}
}
\value{
Returns either a single matrix, or a list of matrices of
equal dimension
}
\description{
Provides random covariance/correlation matrices for quick
tests. Should not be used for statistics.
}
\examples{
#single 10x10 correlation matrix
RandomMatrix(10)

#single 5x5 covariance matrix, variances between 3 and 4
RandomMatrix(5, 1, 3, 4)

#two 3x3 covariance matrices, with shared variances
RandomMatrix(3, 2, variance= c(3, 4, 5))

#large 10x10 matrix list, with wide range of variances
RandomMatrix(10, 100, 1, 300)
}
\author{
Diogo Melo Edgar Zanella
}
\keyword{randommatrices}

