% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BSM_utilities.R
\name{RiskNeutralProb}
\alias{RiskNeutralProb}
\title{Binomial tree risk-neutral probability}
\usage{
RiskNeutralProb(Interest, Yield, sigma, deltaT)
}
\arguments{
\item{Interest}{r, the risk-free rate; the asset's expected yield}

\item{Yield}{q, the asset's actual yield}

\item{sigma}{the asset's price volatility}

\item{deltaT}{time interval}
}
\value{
p, the risk-neutral probability
}
\description{
Binomial tree risk-neutral probability
}
\author{
George Fisher \email{GeorgeRFisher@gmail.com}
}
\references{
Hull 7th edition Ch 19 P 409
}

