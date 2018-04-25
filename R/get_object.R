get_object <- function(node, identifier) {
  node$client$get(paste(node$api_base, "object", sep = "/", identifier))
}
