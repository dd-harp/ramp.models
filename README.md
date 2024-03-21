# ramp.malaria <br><br> Robust Analytics for Malaria Policy

Policy advice should be robust to uncertainty. 
Robust Analytics for Malaria Policy (RAMP) was developed as a bespoke inferential system for malaria; it's goal is to characterize, quantify, and propagate uncertainty. 
RAMP software has implemented those principles in a stable computational form to facilitate the transformation of data into robust policy advice.
This package, **`ramp.malaria`**, is designed as the entry point for six other R packages.

+ **xde** is a system for building and solving systems of differential equations describing malaria and other mosquito-transmitted pathogens (see
[`ramp.xde`](https://github.com/dd-harp/ramp.xde)) 

+  **dts** is a system for building and solving systems of discrete time systems describing malaria and other mosquito-transmitted pathogens, including deterministic and stochastic difference equations (see [`ramp.dts`](https://github.com/dd-harp/ramp.dts))

+ **library** holds a superset of algorithms and models that can be used to build models (see [`ramp.library`](https://github.com/dd-harp/ramp.library)) 

+ **work** is a set of algorithms that can be used to analyze models [`ramp.work`](https://github.com/dd-harp/ramp.work)

+ **falciparum** takes a deep dive into human - *Plasmodium falciparum* interactions using a probabilistic approach [`ramp.falciparum`](https://github.com/dd-harp/ramp.falciparum)

+ **micro** is a set of tools for analyzing malaria and mosquito ecology microsimulation models [`ramp.micro`](https://github.com/dd-harp/ramp.micro)

One of our goals in developing RAMP was to have a reusable code base, so for awhile, we became the mathematical equivalent of a chop shop (*i.e.* the kind that backstops car thieves). To get started, we wanted to develop a framework for nimble model building that was modular, flexible, and extensible. 