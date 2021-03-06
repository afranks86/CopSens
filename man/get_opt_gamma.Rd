% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_opt_gamma.R
\name{get_opt_gamma}
\alias{get_opt_gamma}
\title{Obtain Optimized Sensitivity Parameters Using Multivariate Calibration Criterion}
\usage{
get_opt_gamma(
  mu_y_dt,
  mu_u_dt,
  cov_u_t,
  sigma_y_t,
  penalty_weight = 0,
  gamma0 = NULL,
  n_iter = 100,
  normtype = "L2"
)
}
\arguments{
\item{mu_y_dt}{Scalar or vector that contains naive estimates of treatment effects
ignoring confounding.}

\item{mu_u_dt}{Matrix of difference in conditional confounder means, \eqn{E(U \mid t1) - E(U \mid t2)},
with latent variables in columns.}

\item{cov_u_t}{Covariance matrix of confounders conditional on treatments.}

\item{sigma_y_t}{Scalar of the standard deviation of outcome conditional on treatments.}

\item{penalty_weight}{scalar specifying the penalty weight for \eqn{R^2} to put on its magnitude.}

\item{gamma0}{An optional vector with initial values of the sensitivity parameters to be optimized over.}

\item{n_iter}{Number of times of optimization to execute.}

\item{normtype}{character. Optional function \code{m} for the multivariate calibration criterion.
By default, the L2 norm will be applied.\cr
"L1" - apply the L1 norm, \code{sum(abs(x))}. \cr
"L2" - apply the L2 norm, \code{sqrt(sum(x^2))}.\cr
"Inf" - apply the infinity norm, \code{max(abs(x))}. \cr}
}
\value{
Optimized sensitivity parameters.
}
\description{
Obtain Optimized Sensitivity Parameters Using Multivariate Calibration Criterion
}
