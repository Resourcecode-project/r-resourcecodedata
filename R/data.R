#' Resourcecode FIELD grid
#'
#' This data contains the location and characteristics of the 328,030 nodes
#' where the RESOURCECODE hindcast data is available
#'
#' @format ## `rscd_field`
#' A data frame with 328,030 rows and 5 columns:
#' \describe{
#'   \item{node}{node number}
#'   \item{longitude, latitude}{coordinates of the nodes}
#'   \item{depth}{depth of the node}
#'   \item{d50}{Bottom sediment types}
#' }
#'
#' @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/>
"rscd_field"

#' Resourcecode SPEC grid
#'
#' This data contains the location and characteristics of the 24,276 nodes
#' where the full 2D spectral data is available in the RESOURCECODE data.
#'
#' @format ## `rscd_spectral`
#' A data frame with 24,276 rows and 5 columns:
#' \describe{
#'   \item{longitude, latitude}{coordinates of the nodes}
#'   \item{name}{Name of the spectral output point}
#'   \item{depth}{depth of the node}
#'   \item{d50}{Bottom sediment types}
#' }
#' @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/>
"rscd_spectral"

#' Resourcecode variable list
#'
#' This data contains the variables available in the FIELD database.
#'
#' @format ## `rscd_variables`
#' A data frame with 88 rows and 3 columns:
#' \describe{
#'   \item{name}{short name of the variable}
#'   \item{longname}{Full name}
#'   \item{unit}{Unit}
#' }
#' @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/>
"rscd_variables"

#' Resourcecode coastline
#'
#' This data contains the coastline used to run the RESOURCECODE hindcast.
#' This will be mainly used for ploting purpose.
#'
#' @format ## `rscd_coastline`
#' A data frame with 24403 rows and 3 columns:
#' \describe{
#'   \item{longitude,latitude}{coordinates of the border line}
#'   \item{depth}{depth of the border.}
#' }
#' @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/>
"rscd_coastline"

#' Resourcecode islands coastline
#'
#' This data contains the coastline of the islands used to run the
#' RESOURCECODE hindcast, as data separated from the mainland.
#' This will be mainly used for ploting purpose.
#'
#' @format ## `rscd_islands`
#' A data frame with 24403 rows and 3 columns:
#' \describe{
#'   \item{longitude,latitude}{coordinates of the border line}
#'   \item{depth}{depth of the border}
#'   \item{ID}{Unique number used to identify the island}
#' }
#' @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/>
"rscd_islands"

#' Resourcecode triangles
#'
#' This data contains the triangles of the unstructured computational mesh.
#' This will be mainly used for ploting purpose.
#'
#' @format ## `rscd_triangles`
#' A matrix with 3 rows and 566506 columns:
#' \describe{
#'   \item{rows}{verticies of the triangles}
#'   \item{columns}{node number of each vertices}
#' }
#' @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/>
"rscd_triangles"

#' Resourcecode frequency vector of 1D and 2D spectra
#'
#' The wave spectrum discretization considers 36 frequencies, starting from
#' 0.0339 Hz up to 0.9526 Hz with a frequency increment factor of 1.1
#'
#' @format ## `rscd_freq`
#' An array 36 elements with the frequencies values
#'
#' @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/>
"rscd_freq"

#' Resourcecode directional bins
#'
# In terms of directional discretization, 36 directions were used
#' (equivalent to a directional resolution of 10°;
#'
#' @format ## `rscd_dir`
#' An array of length 36 with the directionnal bins
#'
#' @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/>
"rscd_dir"

#' Resourcecode 1D directional wave spectra
#'
#  Example of 1D directional spectral data.
#' This data contains the time series of 1D wave spectral
#' data at the 'Pierre noires (6200069) wave buoy from
#' 01-01-1994 to 31-01-1994.
#'
#' @format ## `rscd_1d_spectra`
#' An list with 12 elements:
#' \describe{
#'   \item{longitude}{Longitude}
#'   \item{latitude}{Latitude}
#'   \item{frequency1}{Lower frequency}
#'   \item{frequency2}{Upper frequency}
#'   \item{ef}{Surface elevation variance spectral density}
#'   \item{th1m}{Mean direction from first spectral moment}
#'   \item{th2m}{Mean direction from second spectral moment}
#'   \item{sth1m}{Mean directional spreading from first spectral moment}
#'   \item{sth2m}{Mean directional spreading from second spectral moment}
#'   \item{freq}{Central frequency}
#'   \item{forcings}{A data.frame with 14 variables:
#'    \enumerate{
#'      \item{time}{Time}
#'      \item{dpt}{Depth, positive downward}
#'      \item{wnd}{Wind intensity, at 10m above sea level}
#'      \item{wnddir}{Wind direction, comes from}
#'      \item{cur}{Current intensity, at the surface}
#'      \item{curdir}{Current direction, going to}
#'      \item{hs}{Significant wave height}
#'      \item{fp}{Peak wave frequency}
#'      \item{f02}{Mean wave frequency}
#'      \item{f0m1}{Mean wave frequency at spectral moment minus one}
#'      \item{th1p}{Mean wave direction at spectral peak}
#'      \item{sth1p}{Directional spreading at spectral peak}
#'      \item{dir}{Mean wave direction}
#'      \item{spr}{Mean directional spreading}
#'    }}
#'   \item{station}{Station name}
#' }
#'
#' @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/>
"rscd_1d_spectra"
