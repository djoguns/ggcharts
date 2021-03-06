% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lollipop_chart.R
\name{lollipop_chart}
\alias{lollipop_chart}
\title{Lollipop Chart}
\usage{
lollipop_chart(
  data,
  x,
  y,
  facet = NULL,
  ...,
  line_size = 0.75,
  line_color = "#1F77B4",
  point_size = 4,
  point_color = line_color,
  highlight = NULL,
  sort = TRUE,
  horizontal = TRUE,
  limit = NULL,
  threshold = NULL
)
}
\arguments{
\item{data}{Dataset to use for the bar chart}

\item{x}{The x variable}

\item{y}{numeric. If y is missing then it will be assigned the number of records in each group of y}

\item{facet}{A variable defining the faceting groups}

\item{...}{Additional arguments passed to aes()}

\item{line_size}{character. Size of the lollipop 'stick'}

\item{line_color}{character. Color of the lollipop 'stick'}

\item{point_size}{character. Size of the lollipop 'head'}

\item{point_color}{character. Color of the lollipop 'head'}

\item{highlight}{A value of \code{x} that should be highlighted in the plot}

\item{sort}{logical. Should the data be sorted before plotting?}

\item{horizontal}{logical. Should coord_flip() be added to the plot}

\item{limit}{integer. If a value for limit is provided only the first limit records will be displayed}

\item{threshold}{numeric. If a value for threshold is provided only records with y > threshold will be displayed}
}
\description{
Easily create a lollipop chart using ggplot2
}
\examples{
data(biomedicalrevenue)
revenue2016 <- biomedicalrevenue[biomedicalrevenue$year == 2016, ]
revenue_bayer <- biomedicalrevenue[biomedicalrevenue$company == "Bayer", ]

## By default lollipop_chart() creates a horizontal and sorted plot
lollipop_chart(revenue2016, company, revenue)

## Create a vertical, non-sorted lollipop chart
lollipop_chart(revenue_bayer, year, revenue, horizontal = FALSE, sort = FALSE)

## Limit the number of lollipops to the top 15
lollipop_chart(revenue2016, company, revenue, limit = 15)

## Display only companies with revenue > 50B.
lollipop_chart(revenue2016, company, revenue, threshold = 50)

## Change the color of the whole lollipop
lollipop_chart(revenue2016, company, revenue, line_color = "purple")

## Change the color of the lollipop stick and head individually
lollipop_chart(revenue2016, company, revenue, point_color = "darkgreen", line_color = "gray")

## Decrease the lollipop head size
lollipop_chart(revenue2016, company, revenue, point_size = 2.5)

## Highlight a single lollipop
lollipop_chart(revenue2016, company, revenue, limit = 15, highlight = "Roche")

## Use facets to show the top 10 companies over the years
lollipop_chart(biomedicalrevenue, company, revenue, facet = year, limit = 10)

}
\author{
Thomas Neitmann
}
