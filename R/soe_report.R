#' PLOS journal format.
#'
#' Format for creating submissions to PLOS journals. Adapted from
#' \href{http://journals.plos.org/ploscompbiol/s/latex}{http://journals.plos.org/ploscompbiol/s/latex}.
#'
#' @inheritParams rmarkdown::pdf_document
#' @param ... Additional arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown::render]{render}}
#'
#' @examples
#'
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "soe_report", package = "templates")
#' }
#'
#' @export
soe_report <- function(...,
                       keep_tex = TRUE,
                       latex_engine = 'xelatex',
                       md_extensions = c("-autolink_bare_uris")) {
  inherit_pdf_document(...,
                       latex_engine = 'xelatex',
                       template = find_resource("soe_report", "template.tex"),
                       keep_tex = keep_tex,
                       md_extensions = md_extensions)
}
