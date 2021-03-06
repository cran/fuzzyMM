\name{mm}
\alias{mm}
\title{Map Matching}
\usage{
mm(traj, plot = FALSE)
}
\arguments{
  \item{traj}{\link[sp]{SpatialPointsDataFrame-class}
  containing the GPS trajectories.  See Details for
  additional info.}

  \item{plot}{boolean. Matched trajectory will be plotted
  if true.}
}
\description{
Function that matches GPS trajectories to the OSM digital
road network using a fuzzy logic map matching algorithm.
}
\details{
\bold{mm} is the main function of this package. The input
to the function is a
\link[sp]{SpatialPointsDataFrame-class} containing the GPS
trajectory that needs to be matched to a digital road
network.

To succesfully apply the map matching algorithm the data
part of the trajectories must include data for HDOP, Speed
and Bearing, with the columns named "GPS.HDOP", "GPS.Speed"
and "GPS.Bearing" respectively. Values for GPS.Speed must
be given in km/h. Missing values in the data will be
replaced with zeros and can lead to incorrect matchings.

The map data is obtained from OpenStreetMap.

The algorithm consists of three major parts responsible for
the identification of the links the vehicle is travelling
on. \itemize{ \item Initial MapMatching Process (IMP) \item
Subsequent MapMatching Process along a link (SMP-1) \item
Subsequent MapMatching Process at a junction (SMP-2) } Each
of this processes uses a Fuzzy Inference System (FIS) for
the link identification. Input variables, fuzzy subsets and
fuzzy rules for each FIS can be seen in
\code{\link{FIS_IMP}}, \code{\link{FIS_SMP1}} and
\code{\link{FIS_SMP2}} or by getting the corresponding
\code{\link{frbs}} object using \code{\link{get_fis}}.

A detailed description of the fuzzy logic map matching
algorithm and the FIS can be found in Quddus (2006).
}
\examples{
\dontrun{
data(traj)
matched_traj <- mm(traj, plot = TRUE)
}
}
\author{
Nikolai Gorte <n.gorte@gmail.com>
}
\references{
Quddus, M. A. 2006 (January). \emph{High Integrity Map
Matching Algorithms for Advanced Transport Telematics
Applications}. Ph.D. thesis, Imperial College London,
United Kingdom.
}
\seealso{
\code{\link{FIS_IMP}}, \code{\link{FIS_SMP1}},
\code{\link{FIS_SMP2}}, \code{\link{get_fis}},
\code{\link{frbs}}
}

