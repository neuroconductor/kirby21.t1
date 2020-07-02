#' @title Download T1 Image Filenames
#'
#' @description Download the files for the T1 images
#' @param ... arguments to pass to \code{\link{download_kirby21_data}},
#' \code{modalities = "T1"} so it cannot be specified
#' @return Indicator if the data is downloaded.
#' 
#' @export
#' @importFrom kirby21.base download_kirby21_data all_modalities
download_t1_data =  function(...) {  
  x = kirby21.base::download_kirby21_data(modality = c("T1", "BrainMask"), ...)
  return(x)
}

