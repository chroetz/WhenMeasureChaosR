repeatExperiment <- function(
    attractor, deltaT, sd, noiseReps, locationReps
) {

  deltaI <- round(deltaT / attractor$tStep)

  esti0 <- attractor$u[1:(attractor$n-deltaI), , drop=FALSE]
  esti1 <- attractor$u[(1+deltaI):attractor$n, , drop=FALSE]

  logg(1, "generateAndApply() with locationReps = ", locationReps)
  idxes <- replicate(
    locationReps,
    generateAndApply(attractor, deltaI, sd, noiseReps, esti0, esti1))

  return(idxes)
}
