#' @export
execute <- function(opts) {

  # Set default opts.
  if (is.null(opts$deltaT)) opts$deltaT <- 0
  if (is.null(opts$sd)) opts$sd <- 1
  if (is.null(opts$noiseReps)) opts$noiseReps <- 1
  if (is.null(opts$locationReps)) opts$locationReps <- 100
  if (is.null(opts$outFile)) opts$outFile <- paste0("results_", format(Sys.time(), "%Y-%m-%d_%H-%M-%S"), ".RDS")
  if (is.null(opts$attrFile)) opts$attrFile <- "attractorLorenz63.RDS"

  logg(0, "Use following opts:")
  for (i in seq_along(opts))
    logg(0, "* ", names(opts)[i], ": ", opts[[i]], " (", typeof(opts[[i]]),")\n", sep="")

  logg(0, "read attractor file")
  attractor <- readRDS(opts$attrFile)

  logg(0, "run")
  idxes <- repeatExperiment(
    attractor,
    deltaT = opts$deltaT,
    sd = opts$sd,
    noiseReps = opts$noiseReps,
    locationReps = opts$locationReps)

  logg(0, "save results")
  res <- list(
    idxes = idxes,
    opts = opts)
  saveRDS(
    res,
    file = opts$outFile)
  return(res)
}
