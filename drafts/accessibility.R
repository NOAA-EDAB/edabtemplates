## Adapted from: http://www.richschwinn.com/accessibility/accessibility_post_processing.R

library(dplyr)
library(knitr)
library(tools)

# reads the intermediate tex file
input = readLines("drafts/508_test/508_test.tex")

# adds selected tags
output =
  # The fixed commands turns off regular expression processing.
  gsub(
    "\\includegraphics{508_test_files/figure-latex/diamonds-1.pdf}",
    "\\AccTool{This is a beutiful plot of the prices of 5,000 round cut diamonds}{\\includegraphics{508_test_files/figure-latex/diamonds-1.pdf}}",
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


