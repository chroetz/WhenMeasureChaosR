logg <- function(level, ...) {
  if (level <= .logThreshold) {
    cat(paste0(c(rep("\t", level), ..., "\n"), collapse=""))
  }
}

.logThreshold <- 1
