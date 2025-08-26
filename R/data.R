#' Resourcecode FIELD grid
#'
#' This data contains the location and characteristics of the 328,030 nodes
#' where the RESOURCECODE hindcast data is available
#'
#' @format A data frame with 328,030 rows and 5 columns:
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
#' @format A data frame with 24,276 rows and 5 columns:
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
#' @format A data frame with 88 rows and 3 columns:
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
#' @format A data frame with 24403 rows and 3 columns:
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
#' @format A data frame with 24403 rows and 3 columns:
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
#' @format A matrix with 3 rows and 566506 columns:
#' \describe{
#'   \item{rows}{verticies of the triangles}
#'   \item{columns}{node number of each vertices}
#' }
#' @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/>
"rscd_triangles"

#' Resourcecode central frequency vector of 1D and 2D spectra
#'
#' The wave spectrum discretization considers 36 frequencies, starting from
#' 0.0339 Hz up to 0.9526 Hz with a frequency increment factor of 1.1
#'
#' @format A vector 36 elements with the frequencies values
#'
#' @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/>
"rscd_freq"

#' Resourcecode lower frequency vector of 1D and 2D spectra
#'
#' The wave spectrum discretization considers 36 frequencies, starting from
#' 0.0339 Hz up to 0.9526 Hz with a frequency increment factor of 1.1
#'
#' @format A vector 36 elements with the frequencies values
#'
#' @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/>
"rscd_frequency1"

#' Resourcecode higher frequency vector of 1D and 2D spectra
#'
#' The wave spectrum discretization considers 36 frequencies, starting from
#' 0.0339 Hz up to 0.9526 Hz with a frequency increment factor of 1.1
#'
#' @format A vector 36 elements with the frequencies values
#'
#' @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/>
"rscd_frequency2"

#' Resourcecode directional bins
#'
# In terms of directional discretization, 36 directions were used
#' (equivalent to a directional resolution of 10°;
#'
#' @format A vector of length 36 with the directionnal bins
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
#' @format A list with 12 elements:
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
#'    \describe{
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

#' Resourcecode 2D directional wave spectra
#'
#  Example of 2D directional spectral data.
#' This data contains the time series of 1D wave spectral
#' data at the 'Pierre noires (6200069) wave buoy from
#' 01-01-1994 to 31-01-1994.
#'
#' @format A list with 9 elements:
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
#'   \item{dir}{Directionnal bins}
#'   \item{forcings}{A data.frame with 6 variables:
#'    \describe{
#'      \item{time}{Time}
#'      \item{dpt}{Depth, positive downward}
#'      \item{wnd}{Wind intensity, at 10m above sea level}
#'      \item{wnddir}{Wind direction, comes from}
#'      \item{cur}{Current intensity, at the surface}
#'      \item{curdir}{Current direction, going to}
#'    }}
#'   \item{station}{Station name}
#' }
#'
#' @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/>
"rscd_2d_spectra"

#' Resourcecode statistical summary
#'
#  Example of summary statistics computed on the FIELD grid,
#' on the whole period covered by the database, currently 1994-2023.
#'
#' @format A data.frame with columns:
#' \describe{
#'   \item{hs_mean}{Mean significant wave height}
#'   \item{hs_max}{Maximal modeled significant wave height}
#'   \item{tp_mean}{Mean peak wave period}
#'   \item{wind_speed_mean}{Mean wind speed at 10m height}
#'   \item{wind_speed_max}{Maximal wind speed at 10m height}
#'   \item{cur_speed_mean}{Mean current speed at surface}
#'   \item{cur_speed_max}{Maximal surface current speed at surface}
#'   \item{Wave_Dp_MeanDir}{Mean wave direction from Dp (direction of mean vector)}
#'   \item{Wind_MeanDir}{Mean wind direction at 10m height (direction of mean vector)}
#'   \item{Cur_MeanDir}{Mean surface current direction (direction of mean vector)}
#'  }
#'  @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/> and computations
#' made by Nicolas Raillard on original netCDF files.
"rscd_stats"
