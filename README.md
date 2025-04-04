
<!-- README.md is generated from README.Rmd. Please edit that file -->

# UBClassTools

<!-- badges: start -->

[![R-CMD-check](https://github.com/JustinTrenchcoat/UBClassTools/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/JustinTrenchcoat/UBClassTools/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/JustinTrenchcoat/UBClassTools/graph/badge.svg)](https://app.codecov.io/gh/JustinTrenchcoat/UBClassTools)
<!-- badges: end -->

The goal of `UBClassTools` is to save students’ time when they are
encountering multiple choice questions for their STAT or DSCI homework,
and their schedule is tight so that they don’t really have to the time
to read through the material and figure out the answer, nor they have
the time to try out every combination of the choices (because who knows
why some prof makes **7** choices and tells you one or more answer is
correct!) Just enter the total number of choices available, and the Hash
code of the right answer (that would show up in an error message when
you randomly enter a answer hoping that is correct.), this tool will
output the correct answer!

## Installation

You can install the development version of UBClassTools from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("JustinTrenchcoat/UBClassTools")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(UBClassTools)
## basic example code
getPermutations(2,"127a2ec00989b9f7faf671ed470be7f8")
#> [1] "The answer is:"
#> [1] "A"
#> [1] "Function Complete!"
```
