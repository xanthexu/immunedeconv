test_mat = read_tsv("bulk_mat.tsv") %>% as.data.frame() %>% tibble::column_to_rownames("gene_symbol")

test_that("timer works", {
  res = deconvolute_timer(test_mat, indications=rep("brca", ncol(test_mat)))
  assert("matrix dimensions consistent", ncol(res) == ncol(test_mat))
})

test_that("timer with multiple indications", {
  res = deconvolute_timer(test_mat, indications=c("brca", "brca", "brca", "chol", "chol", "chol", "chol", "chol"))
  assert("matrix dimensions consistent", ncol(res) == ncol(test_mat))
  assert("column order consistent", all(colnames(res) == colnames(test_mat)))
})

test_that("timer with multiple indications, unordered indication vector", {
  res = deconvolute_timer(test_mat, indications=c("brca", "brca", "brca", "chol", "chol", "blca", "brca", "brca"))
  assert("matrix dimensions consistent", ncol(res) == ncol(test_mat))
  assert("column order consistent", all(colnames(res) == colnames(test_mat)))
})

test_that("mcp_counter works", {
  res = deconvolute_mcp_counter(test_mat)
  assert("matrix dimensions consistent", ncol(res) == ncol(test_mat))
})

test_that("epic works", {
  res = deconvolute_epic(test_mat)
  assert("matrix dimensions consistent", ncol(res) == ncol(test_mat))
})

test_that("quantiseq works", {
  res = deconvolute_quantiseq(test_mat)
  assert("matrix dimensions consistent", ncol(res) == ncol(test_mat))
})

test_that("xcell works", {
  res = deconvolute_xcell(test_mat)
  assert("matrix dimensions consistent", ncol(res) == ncol(test_mat))
})