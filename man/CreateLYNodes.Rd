% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/medltmle_HelperFun.R
\name{CreateLYNodes}
\alias{CreateLYNodes}
\title{CreateLYNodes}
\usage{
CreateLYNodes(data, nodes, check.Qform, Qform)
}
\arguments{
\item{data}{Original wide-form data.}

\item{nodes}{List object containing A,C,L,Y,D,W2,AC,ACD,ACZ,Z node index.}

\item{check.Qform}{Logical variable indicating whether the corresponding Q forms need to be edited.}

\item{Qform}{If \code{check.Qform} is set to \code{TRUE}, specify the Q forms.}
}
\value{
Returns LY nodes that contain A/C/Z nodes between them.
}
\description{
Get the LY nodes without "blocks" of L/Y nodes uninterrupted by A/C/Z nodes.
}
