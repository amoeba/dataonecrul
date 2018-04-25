# dataonecrul

Simple test of the [vcr](https://github.com/ropensci/vcr) package for testing functions that interact with an API.
This isn't intended to become a real package.

## Usage

```r
library(dataonecrul)

node <- node("https://dev.nceas.ucsb.edu/knb/d1/mn/v2")
get_system_metadata(node, "00005f4b-f1ff-40a4-bb0b-7fed84ee9526")
```

## Testing

```r
devtools::test()
```