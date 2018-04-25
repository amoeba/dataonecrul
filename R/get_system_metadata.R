get_system_metadata <- function(node, identifier) {
  resp <- node$client$get(paste(node$api_base, "meta", sep = "/", identifier))
  xml2::read_xml(rawToChar(resp$content))
}

