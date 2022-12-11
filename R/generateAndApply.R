generateAndApply <- function(
    attractor, deltaI, sd, noiseReps, esti0, esti1
) {

  logg(2, "sample truth")
  # randomly draw the true locations of the two measurements
  i0 <- sample.int(attractor$n - deltaI, 1)
  i1 <- i0 + deltaI
  x0 <- attractor$u[i0, ]
  x1 <- attractor$u[i1, ]

  logg(2, "observeAndEstimate() with noiseReps = ", noiseReps)
  estiIs <- replicate(
    noiseReps,
    observeAndEstimate(attractor$u, x0, x1, sd, deltaI),
    simplify = TRUE)

  return(c(i0, estiIs)) # first element is truth, rest are results of estimation with different noise
}
