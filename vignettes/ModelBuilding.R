## ----eval=F-------------------------------------------------------------------
#  library(devtools)
#  devtools::install_github("dd-harp/ramp.xds")

## -----------------------------------------------------------------------------
library(ramp.xds)

## ----echo=F-------------------------------------------------------------------
#devtools::load_all()

## -----------------------------------------------------------------------------
model <- xds_setup()

## -----------------------------------------------------------------------------
model <- xds_solve(model) 

## -----------------------------------------------------------------------------
names(model$outputs)

## -----------------------------------------------------------------------------
head(get_EIR(model), 3)

## ----fig.height=6, fig.width=8, fig.cap = "**Figure 1:** Plotting standard outputs"----
par(mfrow = c(2,2))
xds_plot_X(model)
xds_plot_M(model)
xds_plot_Y(model, add=T)
xds_plot_Z(model, add=T)
xds_plot_PR(model)
xds_plot_EIR(model)

## -----------------------------------------------------------------------------
Lo = list(
       Lambda=500, 
       F_season = function(t){return(1+sin(2*pi*(t+90)/365))})

## -----------------------------------------------------------------------------
model_1 <- make_Lpar("trivial", model, 1, Lo)
model_1 <- last_to_inits(model_1)

## -----------------------------------------------------------------------------
model_1 <- xds_solve(model_1, Tmax=365*3) 

## ----fig.height=3.5, fig.width=8, fig.cap = "**Figure 2:** Outputs with Seasonal Forced Emergence using a Trace Function"----
par(mfrow = c(1,2))
xds_plot_X(model_1)
xds_plot_M(model_1)
xds_plot_Y(model_1, add=T)
xds_plot_Z(model_1, add=T)

## -----------------------------------------------------------------------------
model1 = xds_setup()

## -----------------------------------------------------------------------------
model2 = xds_setup(Xname = "SIS", MYZname = "macdonald", Lname = "trivial")

