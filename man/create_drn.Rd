\name{create_drn}
\alias{create_drn}
\title{Digital Road Network}
\usage{
create_drn(bbox)
}
\arguments{
  \item{bbox}{spatial bounding box from spatial data
  (\code{\link{bbox}})}
}
\description{
Create a Digital Road Network
}
\details{
This function downloads OSM road data for the area defined
by the bounding box and creates a digital road network.
}
\examples{
\dontrun{
data(traj)
roads <- create_drn(bbox(traj))

# Plot everything
plot(traj)
lines(slot(roads, "sl"))

# Shortest path
shortest.paths(slot(roads, "g"), V(slot(roads, "g"))[1], V(slot(roads, "g"))[23])
}
}
\author{
Nikolai Gorte <n.gorte@gmail.com>
}

