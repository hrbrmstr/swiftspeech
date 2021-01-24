
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

NOTE: This requires `{swiftr}`.

``` r
remotes::install_git("https://git.rud.is/hrbrmstr/swiftspeech.git")
# or
remotes::install_gitlab("hrbrmstr/swiftspeech")
# or
remotes::install_bitbucket("hrbrmstr/swiftspeech")
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
parts_of_speech("The comm wasn't working. Feeling increasingly ridiculous, he pushed the button for the 1MC channel several more times. Nothing. He opened his eyes and saw that all the lights on the panel were out. Then he turned around and saw that the lights on the refrigerator and the ovens were out. It wasn’t just the coffeemaker; the entire galley was in open revolt. Holden looked at the ship name, Rocinante, newly stenciled onto the galley wall, and said, Baby, why do you hurt me when I love you so much?")
##            name         tag
## 1           The  Determiner
## 2          comm        Noun
## 3           was        Verb
## 4           n't      Adverb
## 5       working        Verb
## 6       Feeling        Verb
## 7  increasingly      Adverb
## 8    ridiculous   Adjective
## 9            he     Pronoun
## 10       pushed        Verb
## 11          the  Determiner
## 12       button        Noun
## 13          for Preposition
## 14          the  Determiner
## 15          1MC   OtherWord
## 16      channel        Noun
## 17      several   Adjective
## 18         more      Adverb
## 19        times        Noun
## 20      Nothing        Noun
## 21           He     Pronoun
## 22       opened        Verb
## 23          his  Determiner
## 24         eyes        Noun
## 25          and Conjunction
## 26          saw        Verb
## 27         that  Determiner
## 28          all      Adverb
## 29          the  Determiner
## 30       lights        Noun
## 31           on Preposition
## 32          the  Determiner
## 33        panel        Noun
## 34         were        Verb
## 35          out      Adverb
## 36         Then      Adverb
## 37           he     Pronoun
## 38       turned        Verb
## 39       around      Adverb
## 40          and Conjunction
## 41          saw        Verb
## 42         that Preposition
## 43          the  Determiner
## 44       lights        Noun
## 45           on Preposition
## 46          the  Determiner
## 47 refrigerator        Noun
## 48          and Conjunction
## 49          the  Determiner
## 50        ovens        Noun
## 51         were        Verb
## 52          out      Adverb
## 53           It     Pronoun
## 54          was        Verb
## 55          n’t      Adverb
## 56         just      Adverb
## 57          the  Determiner
## 58  coffeemaker        Noun
## 59          the  Determiner
## 60       entire   Adjective
## 61       galley        Noun
## 62          was        Verb
## 63           in Preposition
## 64         open   Adjective
## 65       revolt        Noun
## 66       Holden        Noun
## 67       looked        Verb
## 68           at Preposition
## 69          the  Determiner
## 70         ship        Noun
## 71         name        Noun
## 72    Rocinante        Noun
## 73        newly      Adverb
## 74    stenciled        Verb
## 75         onto Preposition
## 76          the  Determiner
## 77       galley        Noun
## 78         wall        Noun
## 79          and Conjunction
## 80         said        Verb
## 81         Baby        Noun
## 82          why     Pronoun
## 83           do        Verb
## 84          you     Pronoun
## 85         hurt        Verb
## 86           me     Pronoun
## 87         when     Pronoun
## 88            I     Pronoun
## 89         love        Verb
## 90          you     Pronoun
## 91           so      Adverb
## 92         much      Adverb
```

## swiftspeech Metrics

| Lang         | \# Files |  (%) | LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
|:-------------|---------:|-----:|----:|-----:|------------:|-----:|---------:|-----:|
| Swift        |        1 | 0.07 |  31 | 0.24 |           9 | 0.13 |        0 | 0.00 |
| C            |        1 | 0.07 |  13 | 0.10 |           4 | 0.06 |        1 | 0.01 |
| Rmd          |        1 | 0.07 |   9 | 0.07 |          17 | 0.25 |       31 | 0.32 |
| R            |        3 | 0.21 |   8 | 0.06 |           2 | 0.03 |       16 | 0.17 |
| C/C++ Header |        1 | 0.07 |   4 | 0.03 |           2 | 0.03 |        0 | 0.00 |
| SUM          |        7 | 0.50 |  65 | 0.50 |          34 | 0.50 |       48 | 0.50 |

clock Package Metrics for swiftspeech

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
