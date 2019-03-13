
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

This repository is a scientific product and is not official communication of the National Oceanic and Atmospheric Administration, or the United States Department of Commerce. All NOAA GitHub project code is provided on an ‘as is’ basis and the user assumes responsibility for its use. Any claims against the Department of Commerce or Department of Commerce bureaus stemming from the use of this GitHub project will be governed by all applicable Federal law. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by the Department of Commerce. The Department of Commerce seal and logo, or the seal and logo of a DOC bureau, shall not be used in any manner to imply endorsement of any commercial product or activity by DOC or the United States Government.

------------------------------------------------------------------------
