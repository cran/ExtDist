% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/DistSelCriteria.R
\name{DistSelCriteria}
\alias{DistSelCriteria}
\title{Distribution Selection Criteria.}
\usage{
DistSelCriteria(X, w = rep(1, length(X))/length(X), candDist = c("Beta_ab",
  "Laplace", "Normal"), criteria = c("logLik", "AIC", "AICc", "BIC", "MDL"))
}
\arguments{
\item{X}{Sample obersevations.}

\item{w}{An optional vector of sample weights.}

\item{candDist}{A vector of names of candidate distributions.}

\item{criteria}{A vector of criteria to be calculated.}
}
\value{
An object of class matrix, containing the listed distribution selection criteria for the named distributions.
}
\description{
A function to calculate the distribution selection criteria
for a list of candidate fits.
}
\details{
When comparing models fitted by maximum likelihood to the same data, the smaller the AIC, BIC or MDL, the better the fit.
When comparing models using the log-likelihood criterion, the larger the log-likelihood the better the fit.
}
\note{
The MDL criterion only works for parameter estimation by numerical maximum likelihood.
}
\examples{
Ozone <- airquality$Ozone
Ozone <- Ozone[!is.na(Ozone)] # Removing the NA's from Ozone data
DistSelCriteria(Ozone, candDist = c("Gamma", "Weibull", "Normal", "Exp"),
criteria = c("logLik","AIC","AICc", "BIC"))
}
\author{
Haizhen Wu and A. Jonathan R. Godfrey.
}

