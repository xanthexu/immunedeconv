# Configuration file. All configuration options are stored in an environment.
config_env <- new.env()

# xCell will fail if ran with more cores than available.
if (Sys.getenv("MAX_CORES") == "") {
  config_env$xcell_cores <- 2
} else {
  config_env$xcell_cores <- min(Sys.getenv("MAX_CORES"), 2)
}
