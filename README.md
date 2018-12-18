
<!-- README.md is generated from README.Rmd. Please edit that file -->
templates
=========

An R package for Rmarkdown templates. Currently includes:

-   SOE template (not 508 Compliant)
-   SOE template (508 Compliant) *in progress*
-   ...

Installation
------------

To install the package, run:

``` r
remotes::install_github("NOAA-EDAB/templates")
#> Skipping install of 'templates' from a github remote, the SHA1 (7b2376c2) has not changed since last install.
#>   Use `force = TRUE` to force installation
```

Example
-------

To create a new State of the Ecosystem template, simply:

``` r
library(templates)
rmarkdown::draft(file = "soe_report.Rmd",
                 template = "soe", 
                 package = "templates")
```

or, after installing the package, click on `create new Rmarkdown document` in Rstudio to have access to the templates.

See [Templates for Rmarkdown](http://rmarkdown.rstudio.com/developer_document_templates.html) for more information.

------------------------------------------------------------------------
