% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medltmle_CreateMedInputs.R
\name{CreateMedInputs}
\alias{CreateMedInputs}
\title{CreateMedInputs}
\usage{
CreateMedInputs(
  data,
  Anodes,
  Cnodes,
  Lnodes,
  Ynodes,
  Inodes,
  Znodes,
  Dnodes,
  W2nodes,
  survivalOutcome,
  QLform,
  QZform,
  gform,
  qzform,
  qLform,
  gbounds,
  Yrange,
  deterministic.g.function,
  SL.library,
  regimes,
  regimes.prime,
  working.msm,
  summary.measures,
  final.Ynodes,
  stratify,
  msm.weights,
  estimate.time,
  gcomp,
  iptw.only,
  deterministic.Q.function,
  IC.variance.only,
  observation.weights,
  CSE,
  past,
  time.end,
  YisL
)
}
\arguments{
\item{data}{Dataframe containing the data in a wide format.}

\item{Anodes}{names of columns containing A covariates (exposure) (character).}

\item{Cnodes}{names of columns containing C covariates (censoring) (character).}

\item{Lnodes}{names of columns containing L covariates (covariate) (character).}

\item{Ynodes}{names of columns containing Y covariates (outcome) (character).}

\item{Inodes}{names of columns containing I covariates (instrument) (character).}

\item{Znodes}{names of columns containing Z covariates (mediator) (character).}

\item{Dnodes}{names of columns containing D covariates (death indicator) (character).}

\item{W2nodes}{names of columns containing W2 covariates (baseline covariates in need of fluctuation) (character).}

\item{survivalOutcome}{logical variable specifying if the outcome is survival.}

\item{QLform}{Q forms for L covariates.}

\item{QZform}{Q forms for Z covariates.}

\item{gform}{g form for intervention (if there is a censoring variable, include C as well).}

\item{qzform}{g form for Z covariates.}

\item{qLform}{g form for L covariates.}

\item{gbounds}{Bounds for the propensity score.}

\item{Yrange}{Specify range for the outcome.}

\item{deterministic.g.function}{Logical specifying if g is a deterministic function.}

\item{SL.library}{SuperLearner library for estimation.}

\item{regimes}{Regimes for abar as output by the RegimesFromAbar function.}

\item{regimes.prime}{Regimes for abar.prime as output by the RegimesFromAbar function.}

\item{working.msm}{Working MSM as output by the GetMediationMSMInputsForLtmle function.}

\item{summary.measures}{Summary measures as output by the GetMediationMSMInputsForLtmle function.}

\item{final.Ynodes}{Final Y node(s).}

\item{stratify}{Logical enabling stratified outcome.}

\item{msm.weights}{MSM weights.}

\item{estimate.time}{Measure time to fun function.}

\item{gcomp}{gcomp formula.}

\item{iptw.only}{Use IPTW estimator only}

\item{deterministic.Q.function}{Logical specifying if Q is a deterministic function.}

\item{IC.variance.only}{Only estimate variance through the influence curve}

\item{observation.weights}{Provide weight for observations}

\item{CSE}{Logical specifying if the estimand is estimated by fully conditioning on the past (TRUE), or with the data-dependent estimate (FALSE).}

\item{past}{Number indicating Markov order for the conditional densities.}

\item{time.end}{Total number of time points.}

\item{YisL}{Logical indicating whether Y is a function of time-varying covariates.}
}
\value{
Returns output ready for ltmleMediation.
}
\description{
Create Mediation Inputs for ltmleMediation.
}
