
library(testthat)

context("getObject")

# Test setup
node <- node("https://cn.dataone.org/cn/v2")


test_that("test a system metadata request works", {
  vcr::use_cassette("get_object", {
    resp <- get_object(node, "8f096d0c7e2f5962ce4828cc6ea59572")

    expect_equal(resp$status_code, 200)
    expect_length(resp$content, 8731184)
  })
})
