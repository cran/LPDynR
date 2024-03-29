% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/090_optim_cust.R
\name{clust_optim}
\alias{clust_optim}
\title{clust_optim}
\usage{
clust_optim(
  obj2clust = NULL,
  num_clstrs = seq(5, 50, 5),
  standardise_vars = TRUE,
  ...
)
}
\arguments{
\item{obj2clust}{SpatRaster object (or its file name). Each layer is one variable}

\item{num_clstrs}{Numeric. Optional. Vector with a sequence of number of clusters to check for optimal}

\item{standardise_vars}{Logical. Optional. If TRUE (default), variables are standardised (mean = 0; sd = 1)}

\item{...}{Optional. Arguments for \code{\link[stats]{kmeans}}}
}
\value{
A scree plot
}
\description{
clust_optim produces a scree plot with number of cluster at x-axis and
total within-cluster sum of squares at y-axis
}
\details{
The 'scree plot method' allows the user to assess how the quality of the
K-means clustering improves when increasing the number of clusters. An elbow in the curve
indicates the optimal number of clusters. K-means are run with \code{\link[stats]{kmeans}}
}
\examples{
\donttest{
dirctry <- paste0(system.file(package='LPDynR'), "/extdata")
variables_noCor <- rm_multicol(dir2process = dirctry,
                               multicol_cutoff = 0.7)
clust_optim(obj2clust = variables_noCor,
            num_clstrs = seq(5, 50, 5))
}
}
\seealso{
\code{\link{PCAs4clust}}; \code{\link{EFT_clust}}; \code{\link[stats]{kmeans}}
}
\author{
Xavier Rotllan-Puig
}
