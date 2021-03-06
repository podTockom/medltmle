% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ltmleMediation_TMLECalcs.R
\name{UpdateQMediation}
\alias{UpdateQMediation}
\title{UpdateQMediation}
\usage{
UpdateQMediation(
  Qstar.kplus1,
  logitQ,
  combined.summary.measures,
  cum.g,
  cum.q.ratio,
  working.msm,
  uncensored,
  intervention.match,
  is.deterministic,
  msm.weights,
  gcomp,
  observation.weights
)
}
\arguments{
\item{Qstar.kplus1}{Estimate of the expectation with respect to the distribution of the node one ahead of the current node given the past (dimension: n x num.regimes).}

\item{logitQ}{logit predicted values of Q for the current node, as estimated by \code{Estimate} (dimension: n x num.regimes).}

\item{combined.summary.measures}{TO DO (dimension: n x num.measures x num.regimes, where num.measures=num.summary.measures + num.baseline.covariates).}

\item{cum.g}{Cumulative g estimate up to the most recent AC node. (dimension: n x num.regimes x num.measures)}

\item{cum.q.ratio}{Cumulative Q estimate ratio of following abar.prime regime and following abar regime. (dimension: n x num.regimes x num.measures)}

\item{working.msm}{Working marginal structural model.}

\item{uncensored}{Uncensored samples.}

\item{intervention.match}{Samples with exposure that matches intervention (dimension: n x num.regimes).}

\item{is.deterministic}{Logical variable indicating samples deterministic due to death or deterministic Q.}

\item{msm.weights}{Marginal structural model weights (dimension: n x num.regimes).}

\item{gcomp}{Logical indicating whether to use Gcomp instead (no updating if TRUE).}

\item{observation.weights}{Sample weights.}
}
\value{
Returns updated estimate of Q, unless gcomp=TRUE or no samples left for estimation purposes.
The output also includes the offset (initial estimate of Q for the current node), fluctuation model, and the clever covariate.
}
\description{
Update the initial fit of Q using clever covariates.
}
