# **`ramp.models`** 

## *Models for the epidemiology, spatial transmission dynamics, and control of malaria and other mosquito-borne pathogens*

<!-- badges: start -->
[![PLoS Computational Biology](https://img.shields.io/badge/doi%3A10.1371%2Fjournal.pcbi.1010684-cornflowerblue?style=for-the-badge&logoColor=cornflowerblue&label=PLoS%20Comp%20Bio&labelColor=slategrey&link=https%3A%2F%2Fjournals.plos.org%2Fploscompbiol%2Farticle%3Fid%3D10.1371%2Fjournal.pcbi.1010684)](https://doi.org/10.1371/journal.pcbi.1010684)

<!-- badges: end -->

## Install **`ramp.xds`** 

To install the latest version of [**`ramp.xds`**](https://dd-harp.github.io/ramp.xds/) from GitHub, run the following lines of code in an R session.

```
library(devtools)
devtools::install_github("dd-harp/ramp.xds")
```

Some models use modules found in [**`ramp.library`**](https://dd-harp.github.io/ramp.library/)

```
devtools::install_github("dd-harp/ramp.library")
```

Finally, install this package:

```
devtools::install_github("dd-harp/ramp.models")
```
Also see the vignette [*Model Building*](articles/ModelBuilding.html)

## What is RAMP?

**`ramp.xds`** was developed to support RAMP. 

RAMP -- **R**obust **A**nalytics for **M**alaria **P**olicy -- describes bespoke inferential systems for malaria decision support and adaptive malaria control that go to great lengths to characterize, quantify, and propagate uncertainty. RAMP includes conventional analysis and simulation-based analytics.

## A Software Ecosystem for RAMP and Malaria Research

**`ramp.models`** is part of a suite of R packages developed to support RAMP: 

+ [**`ramp.xds`**](https://dd-harp.github.io/ramp.xds/) is the core computational engine for simulation-based analytics. It includes a basic set of models -- enough to design, verify, and demonstrate the basic features of modular software. 

+  [**`ramp.library`**](https://dd-harp.github.io/ramp.library/) is an extended library of stable code that has been tested and verified. It includes a large set of model families published in peer review that are not included in **`ramp.xds`** The ability to reuse code reduces the costs of replicating studies. Through this library, **`ramp.xds`** also supports nimble model building and analytics for other mosquito-borne pathogens. 

+ [**`ramp.work`**](https://dd-harp.github.io/ramp.work/) includes algorithms to apply the framework, include code to fit models to data and to do constrained optimization 

+ [**`ramp.models`**](https://dd-harp.github.io/ramp.models/) includes a large set of models illustrating capabilities of **`ramp.xds`** 

+ [**`ramp.falciparum`**](https://dd-harp.github.io/ramp.falciparum/) takes a deep dive into human infections with *Plasmodium falciparum,* from exposure and infection through parasite densities and detection, immunity, disease, and infectiousness using a probabilistic approach [`ramp.falciparum`](dd-harp.github.io/ramp.falciparum)

+ [**`ramp.micro`**](https://dd-harp.github.io/ramp.micro/) is a set of tools for analyzing malaria micro-epidemiology and mosquito micro-ecology 

One of our goals in developing RAMP was to have a reusable code base, so for awhile, we became the mathematical equivalent of a chop shop (*i.e.* the kind that backstops car thieves). To get started, we wanted to develop a framework for nimble model building that was modular, flexible, and extensible.