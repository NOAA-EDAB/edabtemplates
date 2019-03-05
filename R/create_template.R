#' Create a EDAB template
#'
#' A function to create an EDAB Rmarkdown template.
#'
#' @param file File name for the draft
#' @param date character.
#' @param title character.
#' @param running_head character.

#'
#' @return A .Rmd file ready for EDAB report skeleton.
#'
#' @export
#' @examples
#'
#' create_template(file = "test.Rmd", date = NULL, title = "Draft Document", running_head = "Just a doc")
#'


create_template <- function(file,
                            date = NULL,
                            title = "Draft Document",
                            running_head = "Just a doc",
                            overwrite = FALSE){


  rmarkdown::draft(file = file,
                   template = "soe",
                   package = "edabtemplates",
                   edit = FALSE)

  file_path <- gsub("*.Rmd|*.rmd", "", file)
  header_path <- list.files(file_path, pattern = "header.tex", full.names = TRUE)

  if(is.null(date)){
    date = format(Sys.Date(), "%B %e, %Y")
  }

  dat <- readLines(header_path)
  dat <- gsub("TITLE", title, dat)
  dat <- gsub("RUNNING HEAD", running_head, dat)
  dat <- gsub("DATE", date, dat)

  file_connection <- file(header_path)
  writeLines(dat, file_connection)
  close(file_connection)
}
