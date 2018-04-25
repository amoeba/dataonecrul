node <- function(url) {
  parsed <- crul::url_parse(url)

  n <- list(
    client = crul::HttpClient$new(
      url = paste(parsed$scheme, parsed$domain, sep = "://"),
    ),
    api_base = parsed$path
  )


  # Add auth token if we can find one
  token = Sys.getenv("TOKEN")

  if (token != "") {
    n$client$headers <- list(
      Authorization = paste("Bearer", Sys.getenv("TOKEN")
      )
    )
  }

  n
}
