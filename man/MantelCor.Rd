\name{MantelCor}
\alias{MantelCor}
\alias{MantelCor.default}
\alias{MantelCor.list}
\title{Compare matrices via Mantel Correlation}
\usage{
MantelCor(cor.x, cor.y, ...)

\method{MantelCor}{default}(cor.x, cor.y, iterations = 1000, mod = FALSE,
  ...)

\method{MantelCor}{list}(cor.x, cor.y = NULL, iterations = 1000,
  repeat.vector = NULL, mod = FALSE, num.cores = 1, ...)
}
\arguments{
  \item{cor.x}{Single covariance matrix or list of
  covariance matrices.

  If single matrix is suplied, it is compared to cor.y.

  If list is suplied and no cor.y is suplied, all matrices
  are compared.

  If cor.y is suplied, all matrices in list are compared to
  it.}

  \item{cor.y}{First argument is compared to cor.y.
  Optional if cor.x is a list.}

  \item{iterations}{Number of permutations used in
  significance calculation.}

  \item{mod}{Set TRUE to use mantel in testing modularity
  hipotesis. Will return AVG+, AVG- and AVG Ratio based on
  binary hipotesis matrix.}

  \item{repeat.vector}{Vector of repeatabilities for
  correlation correction.}

  \item{num.cores}{If list is passed, number of threads to
  use in computation. Requires doMC library.}

  \item{...}{aditional arguments passed to other methods}
}
\value{
If cor.x and cor.y are passed, returns matrix pearson
correlation and significance via mantel permutations.

If cor.x and cor.y are passed, same as above, but for all
matrices in cor.x.

If only cor.x is passed, a matrix of MantelCor average
values and probabilities of all comparisons. If
repeat.vector is passed, comparison matrix is corrected
above diagonal and repeatabilities returned in diagonal.
}
\description{
Calculates correlation matrix correlation via Mantel.
}
\examples{
c1 <- RandomMatrix(10)
c2 <- RandomMatrix(10)
c3 <- RandomMatrix(10)
MantelCor(c1, c2)

MantelCor(list(c1, c2, c3))

reps <- unlist(lapply(list(c1, c2, c3), MonteCarloRep, "mantel", 10, 10))
MantelCor(list(c1, c2, c3), repeat.vector = reps)

c4 <- RandomMatrix(10)
MantelCor(list(c1, c2, c3), c4)
}
\author{
Diogo Melo, Guilherme Garcia
}
\references{
http://en.wikipedia.org/wiki/Mantel_test
}
\seealso{
\code{\link{KrzCor}},\code{\link{RandomSkewers}},\code{\link{mantel}},\code{\link{RandomSkewers}},\code{\link{TestModularity}}
}
\keyword{matrixcomparison}
\keyword{matrixcorrelation}
\keyword{randomskewers}

