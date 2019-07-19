#' Setup a page to browse papers
#'
#' run with no parameters, it sets up a page that links to literature supplied for the workshop
#'@export
#'
browsePapers <- function()
{
  pkgroot <- system.file(package="TimberWS1")
  ht <- paste0(getwd(),"/Literature.html")
  rmarkdown::render(input=paste0(pkgroot,"/extdata/papers/Literature.Rmd"),output_file=ht)
  browseURL(paste0("file://",ht))
}
