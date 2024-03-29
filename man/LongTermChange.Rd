% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/05_LongTermChange.R
\name{LongTermChange}
\alias{LongTermChange}
\title{LongTermChange}
\usage{
LongTermChange(
  SteadinessIndex = NULL,
  BaselineLevels = NULL,
  StateChange = NULL,
  filename = ""
)
}
\arguments{
\item{SteadinessIndex}{SpatRaster object (or its file name). Steadiness Index (4-class)}

\item{BaselineLevels}{SpatRaster object (or its file name). Baseline levels of land productivity (beginning of time series; 3-class)}

\item{StateChange}{SpatRaster object (or its file name). Change of state of land productivity (beginning minus end of time series; 3-class)}

\item{filename}{Character. Output filename. Optional}
}
\value{
SpatRaster object
}
\description{
LongTermChange combines the Steadiness Index with the baseline levels of land productivity and with the change of
state along the time series, resulting in a 22-class object (see details)
}
\details{
St1-low-No Change  <- 1

St1-low-Change 1 categ  <- 2

St1-low-Change 2 or more categs  <- 3

St1-medium-No Change  <- 4

St1-medium-Change 1 categ  <- 5

St1-medium-Change 2 or more categs  <- 6

St1-high-No Change  <- 7

St1-high-Change 1 categ  <- 8

St1-high-Change 2 or more categs  <- 9

St2-low-No Change  <- 10

St2-low-Change 1 categ  <- 10

St2-low-Change 2 or more categs  <- 10

St2-medium-No Change  <- 11

St2-medium-Change 1 categ  <- 11

St2-medium-Change 2 or more categs  <- 11

St2-high-No Change  <- 12

St2-high-Change 1 categ  <- 12

St2-high-Change 2 or more categs  <- 12

St3-low-No Change  <- 13

St3-low-Change 1 categ  <- 13

St3-low-Change 2 or more categs  <- 13

St3-medium-No Change  <- 14

St3-medium-Change 1 categ  <- 14

St3-medium-Change 2 or more categs  <- 14

St3-high-No Change  <- 15

St3-high-Change 1 categ  <- 15

St3-high-Change 2 or more categs  <- 15

St4-low-No Change  <- 16

St4-low-Change 1 categ  <- 17

St4-low-Change 2 or more categs  <- 18

St4-medium-No Change  <- 19

St4-medium-Change 1 categ  <- 20

St4-medium-Change 2 or more categs  <- 21

St4-high-No Change  <- 22

St4-high-Change 1 categ  <- 22

St4-high-Change 2 or more categs  <- 22

Values = 0 in the final map indicates that there is a scarcity of data in the productivity variable
(i.e. only 1 year with data), so that the indicator cannot be calculated
}
\examples{
\donttest{
sb <- terra::rast(paste0(system.file(package='LPDynR'), "/extdata/sb_cat.tif"))
SteadinessIndex_raster <- steadiness(obj2process = sb)
BaselineLevels_raster <- baseline_lev(obj2process = sb,
                                      yearsBaseline = 3,
                                      drylandProp = 0.4)
StateChange_raster <- state_change(obj2process = sb,
                                   yearsBaseline = 3)

LongTermChange(SteadinessIndex = SteadinessIndex_raster,
               BaselineLevels = BaselineLevels_raster,
               StateChange = StateChange_raster)
}

}
\seealso{
\code{\link{steadiness}}, \code{\link{baseline_lev}}, \code{\link{state_change}}
}
\author{
Xavier Rotllan-Puig
}
