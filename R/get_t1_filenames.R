#' @title Get T1 Image Filenames
#'
#' @description Return the filenames for the T1 images
#' @param ... arguments to pass to \code{\link{get_image_filenames}},
#' \code{modalities = "T1"} so it cannot be specified
#' @return Vector fo filenames
#' 
#' @examples
#' get_t1_filenames()
#' @export
#' @importFrom kirby21.base get_image_filenames
get_t1_filenames = function(...) {
  x = kirby21.base::get_image_filenames(modalities = "T1", ...)
  return(x)
}
