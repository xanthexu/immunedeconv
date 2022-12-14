#' Example RNA-seq dataset from the EPIC publication.
#'
#' A dataset of four RNA-seq samples from patients with metastatic melanoma and associated
#' 'gold standard' immune cell estimates profiled with fluorescence activated cell sorting (FACS)
#'
#' @format an environment with two objects:
#'   (1) `expr_mat`: gene expression matrix with gene_symbols as rownames and sample identifiers as colnames.
#'   (2) `ref`: FACS measurements in a data.frame with three columns: sample, cell_type, true_fraction
#'
#' @source Racle et al. (2017), eLIFE, https://doi.org/10.7554/eLife.26476.029
"dataset_racle"

#' Example RNA-seq dataset from the mMCP_Counter publication.
#'
#' A dataset of six RNA-seq samples from mouse blood and spleen, and associated
#' 'gold standard' immune cell estimates profiled with fluorescence activated cell sorting (FACS)
#'
#' @format an environment with two objects:
#'   (1) `expr_mat`: gene expression matrix with gene_symbols as rownames and sample identifiers as colum names.
#'       Counts are TPM-normalized
#'   (2) `ref`: FACS measurements in a data.frame
#'
#' @source Petitprez et al. (2020), https://doi.org/10.1186/s13073-020-00783-w
"dataset_petitprez"
