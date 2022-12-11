observeAndEstimate <- function(
    u, x0, x1, sd, deltaI
) {

  # add noise to create observations
  y0 <- x0 + stats::rnorm(3, sd=sd)
  y1 <- x1 + stats::rnorm(3, sd=sd)

  # estimate
  estiI <- filterParticles(u, y0, y1, sd, deltaI)

  return(estiI)
}
