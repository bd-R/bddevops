
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bdtests

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![R build
status](https://github.com/bd-R/bdtests/workflows/R-CMD-check/badge.svg)](https://github.com/bd-R/bdtests/actions)
<!-- badges: end -->

The goal of bdtests is to facilitate package development, testing,
benchmarking and pre-release checklists - a ‘devtools like’ package for
bdverse packages development.  
  
:pencil: <span style="color: red;">**This is an initial draft, just a
basic skeleton and a place to store ideas**.</span> :pencil:

## Installation

bdtests is an in-house package; thus, no CRAN release is expected. You
can install bdtests from this repository with:

``` r
remotes::install_github("bd-R/bdtests")
```

## bdverse QA framework

bdtests is part of bdverse QA framework, for more details, see the QA
\[to add link\] section in the development guide.

## Package CI (example)

<details open>

<summary>

<h4>

User Triggered (Push & PR)

</h4>

</summary> <br>

| OS; r :point\_down: | \[Repository\]-\[Dependencies\] ::point\_right: | \[Master\]-\[Master\]                                                                           | \[Dev\]-\[Master\]                                                                                        | \[Dev-Dev\]                                                                                                        |
| --------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| Mac-latest; r-release                                                 | ![Mac-Mas-Mas](https://github.com/sunn-e/bddummy/workflows/Mac-Mas-Mas/badge.svg?branch=master) | ![Mac-Dev-Mas](https://github.com/sunn-e/bddummy/workflows/Mac-Dev-Mas/badge.svg?branch=dev)              | ![Mac-Dev-Dev](https://github.com/sunn-e/bddummy/workflows/Mac-Dev-Dev/badge.svg?branch=dev)                       |
| Win-latest; r-release                                                 | ![Win-Mas-Mas](https://github.com/sunn-e/bddummy/workflows/Win-Mas-Mas/badge.svg?branch=master) | ![Win-Dev-Mas](https://github.com/sunn-e/bddummy/workflows/Win-Dev-Mas/badge.svg)                         | ![Win-Dev-Dev](https://github.com/sunn-e/bddummy/workflows/Win-Dev-Dev/badge.svg)                                  |
| Ubuntu-latest; r-release                                              | ![Ubu-Mas-Mas](https://github.com/sunn-e/bddummy/workflows/Ubu-Mas-Mas/badge.svg)               | ![Ubu-Dev-Mas](https://github.com/sunn-e/bddummy/workflows/Ubu-Dev-Mas/badge.svg?branch=dev)              | ![Ubu-Dev-Dev](https://github.com/sunn-e/bddummy/workflows/Ubu-Dev-Dev/badge.svg?branch=dev)                       |
| Multi-CI                                                              | ![MultiCI-Mas-Mas](https://github.com/sunn-e/bddummy/workflows/Multi-CI-tic-Mas-Mas/badge.svg)  | ![MultiCI-Dev-Mas](https://github.com/sunn-e/bddummy/workflows/Multi-CI-tic-Dev-Mas/badge.svg?branch=dev) | ![MultiCI-Dev-Dev](https://github.com/sunn-e/bddummy/workflows/Multi-CI-tidyverse-Mas-Mas/badge.svg?branch=master) |

</details>

<details>

<summary>

<h4>

Scheduled (Daily)

</h4>

</summary> <br>

| OS; r :point\_down: | \[Repository\]-\[Dependencies\] ::point\_right: | \[Master\]-\[Master\]                                                                           | \[Dev\]-\[Master\]                                                                                        | \[Dev-Dev\]                                                                                                        |
| --------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| Mac-latest; r-release                                                 | ![Mac-Mas-Mas](https://github.com/sunn-e/bddummy/workflows/Mac-Mas-Mas/badge.svg?branch=master) | ![Mac-Dev-Mas](https://github.com/sunn-e/bddummy/workflows/Mac-Dev-Mas/badge.svg?branch=dev)              | ![Mac-Dev-Dev](https://github.com/sunn-e/bddummy/workflows/Mac-Dev-Dev/badge.svg?branch=dev)                       |
| Win-latest; r-release                                                 | ![Win-Mas-Mas](https://github.com/sunn-e/bddummy/workflows/Win-Mas-Mas/badge.svg?branch=master) | ![Win-Dev-Mas](https://github.com/sunn-e/bddummy/workflows/Win-Dev-Mas/badge.svg)                         | ![Win-Dev-Dev](https://github.com/sunn-e/bddummy/workflows/Win-Dev-Dev/badge.svg)                                  |
| Ubuntu-latest; r-release                                              | ![Ubu-Mas-Mas](https://github.com/sunn-e/bddummy/workflows/Ubu-Mas-Mas/badge.svg)               | ![Ubu-Dev-Mas](https://github.com/sunn-e/bddummy/workflows/Ubu-Dev-Mas/badge.svg?branch=dev)              | ![Ubu-Dev-Dev](https://github.com/sunn-e/bddummy/workflows/Ubu-Dev-Dev/badge.svg?branch=dev)                       |
| Multi-CI                                                              | ![MultiCI-Mas-Mas](https://github.com/sunn-e/bddummy/workflows/Multi-CI-tic-Mas-Mas/badge.svg)  | ![MultiCI-Dev-Mas](https://github.com/sunn-e/bddummy/workflows/Multi-CI-tic-Dev-Mas/badge.svg?branch=dev) | ![MultiCI-Dev-Dev](https://github.com/sunn-e/bddummy/workflows/Multi-CI-tidyverse-Mas-Mas/badge.svg?branch=master) |

</details>
