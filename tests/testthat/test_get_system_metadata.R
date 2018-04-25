library(testthat)

context("SystemMetadata")

# Test setup
node <- node("https://dev.nceas.ucsb.edu/knb/d1/mn/v2")

test_that("test a system metadata request works", {
  vcr::use_cassette("get_system_metadata", {
    sm <- get_system_metadata(node, "00005f4b-f1ff-40a4-bb0b-7fed84ee9526")

    expect_is(sm, "xml_document")
  })
})
