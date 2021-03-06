% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate_populations.R
\name{pop_generate}
\alias{pop_generate}
\title{Simulate body masses for a population}
\usage{
pop_generate(
  abundance = NULL,
  aou = NULL,
  genus = NULL,
  species = NULL,
  mean_size = NULL,
  sd_size = NULL,
  id = 1
)
}
\arguments{
\item{abundance}{integer number of individuals to draw. \emph{Required}.}

\item{aou}{aou}

\item{genus}{genus}

\item{species}{species}

\item{mean_size}{numeric, mean body mass (in grams) for this species.}

\item{sd_size}{numeric, standard deviation of body mass for this species.}

\item{id}{defaults AOU or 1}
}
\value{
a dataframe with \code{abundance} rows and columns for species attributes.
}
\description{
Draws body mass measurements for a population of birds (of all the same species) given the population size and either (1) the species id or (2) the mean and potentially standard deviation of body mass for that species.
}
\details{
Fills in the necessary parameters based on the parameters provided and passes these to \code{\link[=ind_draw]{ind_draw()}}.
}
\examples{

pop_generate(abundance = 5, aou = 2881)
pop_generate(abundance = 5, genus = "Selasphorus", species = "calliope")
pop_generate(abundance = 5, mean_size = 20, sd_size = 3)

}
