
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-100%25-lightgrey.svg)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/swiftspeech.svg?branch=master)](https://travis-ci.org/hrbrmstr/swiftspeech)  
![Minimal R
Version](https://img.shields.io/badge/R%3E%3D-3.6.0-blue.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

# swiftspeech

Classify Parts of Speech Using Apple’s CoreML and NaturalLanguage
Libraries

## Description

Classify Parts of Speech Using Apple’s CoreML and NaturalLanguage
Libraries.

## What’s Inside The Tin

The following functions are implemented:

-   `parts_of_speech`: Parts of speech

## Installation

NOTE: This requires [{swiftr}](https://github.com/hrbrmstr/swiftr).

``` r
remotes::install_git("https://git.rud.is/hrbrmstr/swiftspeech.git")
# or
remotes::install_gitlab("hrbrmstr/swiftspeech")
# or
remotes::install_bitbucket("hrbrmstr/swiftspeech")
# or
remotes::install_github("hrbrmstr/swiftspeech")
```

NOTE: To use the ‘remotes’ install options you will need to have the
[{remotes} package](https://github.com/r-lib/remotes) installed.

## Usage

``` r
library(swiftspeech)

# current version
packageVersion("swiftspeech")
## [1] '0.1.0'
```

``` r
tibble::as_tibble(parts_of_speech(paste0(c(
  "The comm wasn't working. Feeling increasingly ridiculous, he pushed",
  "the button for the 1MC channel several more times. Nothing. He opened",
  "his eyes and saw that all the lights on the panel were out. Then he",
  "turned around and saw that the lights on the refrigerator and the",
  "ovens were out. It wasn’t just the coffeemaker; the entire galley was",
  "in open revolt. Holden looked at the ship name, Rocinante, newly",
  "stenciled onto the galley wall, and said, Baby, why do you hurt me",
  "when I love you so much?"
), collapse = " ")))
## # A tibble: 92 x 2
##    name         tag       
##    <chr>        <chr>     
##  1 The          Determiner
##  2 comm         Noun      
##  3 was          Verb      
##  4 n't          Adverb    
##  5 working      Verb      
##  6 Feeling      Verb      
##  7 increasingly Adverb    
##  8 ridiculous   Adjective 
##  9 he           Pronoun   
## 10 pushed       Verb      
## # … with 82 more rows
```

## swiftspeech Metrics

| Lang         | \# Files |  (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
|:-------------|---------:|-----:|----:|-----:|------------:|-----:|---------:|-----:|
| Swift        |        1 | 0.07 |  31 | 0.21 |           9 | 0.13 |        0 | 0.00 |
| Rmd          |        1 | 0.07 |  18 | 0.12 |          17 | 0.25 |       31 | 0.32 |
| C            |        1 | 0.07 |  13 | 0.09 |           4 | 0.06 |        1 | 0.01 |
| R            |        3 | 0.21 |   8 | 0.05 |           2 | 0.03 |       16 | 0.17 |
| C/C++ Header |        1 | 0.07 |   4 | 0.03 |           2 | 0.03 |        0 | 0.00 |
| SUM          |        7 | 0.50 |  74 | 0.50 |          34 | 0.50 |       48 | 0.50 |

clock Package Metrics for swiftspeech

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
