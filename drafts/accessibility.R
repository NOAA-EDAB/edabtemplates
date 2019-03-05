## Adapted from: http://www.richschwinn.com/accessibility/accessibility_post_processing.R

library(dplyr)
library(knitr)
library(tools)
library(rmarkdown)
install.packages("here")
library(here)
# knitr::knit(input = "drafts/508_test/508_test.Rmd",
#             output ="drafts/508_test/508_test.tex")
path.expand("drafts/508_test/508_test.Rmd")


rmarkdown::render(input = here("drafts", "508_test", "508_test.Rmd"),
                  output_format = latex_document(latex_engine = "xelatex",
                                                 includes = list(in_header = "header.tex")),
                  output_file = here("drafts", "508_test","508_test.tex"))

# reads the intermediate tex file
input = readLines( here("drafts", "508_test","508_test.tex"))

# adds selected tags
accessible_caption <- "Now this is an accessible caption!!"
fig_path <- here()


output =
  sprintf("\\AccTool{%s}{\\%s}}", accessible_caption, fig_path)


  # The fixed commands turns off regular expression processing.
  gsub(
    "\\includegraphics{C:/Users/scott.large/Documents/projects/templates/drafts/508_test_files/figure-latex/diamonds-1.pdf}", ## replace bad with
    "\\AccTool{This is a beautiful plot of the prices of 5,000 round cut diamonds}{\\includegraphics{508_test_files/figure-latex/diamonds-1.pdf}}", ## the good
    input,
    fixed = T
  ) %>%

  # Notice the quadruple backslashes in some instances where regular expressions are in use.
  gsub("\\\\begin\\{longtable\\}",
       "\\\\AccTool{This is a table of distances between cities}\\{\\}\\\\begin{longtable}",
       .)

# You can mannually add accessibilty tags without tooltips using \BeginAccSupp and \EndAccSupp
writeLines(output, "drafts/508_test/processed_508_test.tex")
tools::texi2pdf("drafts/508_test/processed_508_test.tex", clean = T)


