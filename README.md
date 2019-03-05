
<!-- README.md is generated from README.Rmd. Please edit that file -->
edabtemplates
=============

An R package for Rmarkdown templates. Currently includes:

-   SOE template (not 508 Compliant)
-   SOE template (508 Compliant) *in progress*
-   ...

Installation
------------

To install the package, run:

``` r
remotes::install_github("NOAA-EDAB/edabtemplates")
```

Example
-------

To create a new State of the Ecosystem template, simply:

``` r
library(edabtemplates)

create_template(file = "soe_test.Rmd",
                date = NULL, 
                title = "State of the Ecosystem 2019: New England", 
                running_head = "State of the Ecosystem 2019: New England")
```

or, after installing the package, click on `create new Rmarkdown document` in Rstudio to have access to the templates.

See [Templates for Rmarkdown](http://rmarkdown.rstudio.com/developer_document_templates.html) for more information.

------------------------------------------------------------------------
