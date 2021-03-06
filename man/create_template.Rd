% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_template.R
\name{create_template}
\alias{create_template}
\title{Create a EDAB template}
\usage{
create_template(file, date = NULL, title = "Draft Document",
  running_head = "Just a doc", overwrite = FALSE)
}
\arguments{
\item{file}{File name for the draft}

\item{date}{character.}

\item{title}{character.}

\item{running_head}{character.}
}
\value{
A .Rmd file ready for EDAB report skeleton.
}
\description{
A function to create an EDAB Rmarkdown template.
}
\examples{

create_template(file = "test.Rmd", date = NULL, title = "Draft Document", running_head = "Just a doc")

}
