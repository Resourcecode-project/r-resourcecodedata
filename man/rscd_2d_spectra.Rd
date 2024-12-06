% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{rscd_2d_spectra}
\alias{rscd_2d_spectra}
\title{Resourcecode 2D directional wave spectra}
\format{
A list with 9 elements:
\describe{
\item{longitude}{Longitude}
\item{latitude}{Latitude}
\item{frequency1}{Lower frequency}
\item{frequency2}{Upper frequency}
\item{ef}{Surface elevation variance spectral density}
\item{th1m}{Mean direction from first spectral moment}
\item{th2m}{Mean direction from second spectral moment}
\item{sth1m}{Mean directional spreading from first spectral moment}
\item{sth2m}{Mean directional spreading from second spectral moment}
\item{freq}{Central frequency}
\item{dir}{Directionnal bins}
\item{forcings}{A data.frame with 6 variables:
\describe{
\item{time}{Time}
\item{dpt}{Depth, positive downward}
\item{wnd}{Wind intensity, at 10m above sea level}
\item{wnddir}{Wind direction, comes from}
\item{cur}{Current intensity, at the surface}
\item{curdir}{Current direction, going to}
}}
\item{station}{Station name}
}
}
\source{
User Manual of the RESOURCECODE database
\url{https://archimer.ifremer.fr/doc/00751/86306/}
}
\usage{
rscd_2d_spectra
}
\description{
This data contains the time series of 1D wave spectral
data at the 'Pierre noires (6200069) wave buoy from
01-01-1994 to 31-01-1994.
}
\keyword{datasets}
