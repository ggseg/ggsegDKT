
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggsegDKT

<!-- badges: start -->

[![R build
status](https://github.com/LCBC-UiO/ggsegDKT/workflows/R-CMD-check/badge.svg)](https://github.com/LCBC-UiO/ggsegDKT/actions)
<!-- badges: end --> This package contains dataset for plotting the
Shaefer cortical atlas ggseg and ggseg3d.

## Installation

You can install the released version of ggsegDKT from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("LCBC-UiO/ggsegDKT")
```

## Example

``` r
library(ggsegDKT)
```

``` r
library(ggseg)
#> Loading required package: ggplot2

plot(dkt) +
  theme(legend.position = "bottom",
        legend.text = element_text(size = 7)) +
  guides(fill = guide_legend(ncol = 4))
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

``` r
library(ggseg3d)
library(dplyr)

ggseg3d(atlas = dkt7_3d) %>% 
  pan_camera("right lateral")
```

<img src="man/figures/README-s7-3d-plot.png" width="100%" />

## Code of Conduct

Please note that the ggsegDKT project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
