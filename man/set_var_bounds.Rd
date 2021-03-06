\name{set_var_bounds}
\alias{set_var_bounds}
\title{Set bounds of fuzzy subsets}
\usage{
set_var_bounds(name = c("speed_high", "speed_low", "speed_zero", "HE_small",
  "HE_large", "PD_short", "PD_long", "HDOP_good", "HDOP_bad",
  "alpha_low, alpha_high", "beta_low", "beta_high", "delta_dist_neg",
  "delta_dist_pos", "HI_small", "HI_large", "HI_180", "connectivity_direct",
  "connectivity_indirect", "dist_err_small", "dist_err_large"),
  bounds = "numeric", default = FALSE)
}
\arguments{
  \item{name}{name of the variable which bounds should be
  changed.}

  \item{bounds}{numeric vector containing the lower and
  upper bound.}

  \item{default}{logical, restores the default bounds if
  true.}
}
\description{
This function allows to set the bounds for the fuzzy
subsets to adjust the membership functions to your needs.
These bounds represent the x values at which the sigmoidal
membership functions reach ~0 or ~1 respectivly(e.g.
``speed is high'' ranges from 3 to 6 m/s).
}
\examples{
set_var_bounds("speed_high", c(4, 7))
get_var_bounds()
update_mf()
}
\author{
Nikolai Gorte <n.gorte@gmail.com>
}
\seealso{
\link{FIS_IMP}, \link{FIS_SMP1}, \link{FIS_SMP2},
\link{update_mf}
}

