## Adapted from: http://www.richschwinn.com/accessibility/accessibility_post_processing.R

library(dplyr)
library(knitr)
library(tools)

# reads the intermediate tex file
input = readLines("accessibility_example.tex")

# adds selected tags
output =
  # The fixed commands turns off regular expression processing.
  gsub(
    "\\includegraphics{accessibility_example_files/figure-latex/diamonds-1.pdf}",
    "\\AccTool{This is a beutiful plot of the prices of 5,000 round cut diamonds}{\\includegraphics{accessibility_example_files/figure-latex/diamonds-1.pdf}}",
    input,
    fixed = T
  ) %>%

  # Notice the quadruple backslashes in some instances where regular expressions are in use.
  gsub("\\\\begin\\{longtable\\}",
       "\\\\AccTool{This is a table of distances between cities}\\{\\}\\\\begin{longtable}",
       .)

# You can mannually add accessibilty tags without tooltips using \BeginAccSupp and \EndAccSupp
writeLines(output, "processed_accessibility_example.tex")
texi2pdf("processed_accessibility_example.tex", clean = T)


